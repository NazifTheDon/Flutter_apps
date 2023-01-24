import 'package:flutter/material.dart';
import 'package:meals_app/widgets/main_drawer.dart';

class Settings extends StatefulWidget {
  static const routeName = '/settings';
  final Function saveFilters;
  final Map<String, bool> filters;
  Settings(this.saveFilters, this.filters);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  @override
  void initState() {
    _glutenFree = widget.filters['gluten'];
    _vegetarian = widget.filters['vegetarian'];
    _vegan = widget.filters['vegan'];
    _lactoseFree = widget.filters['lactose'];
    super.initState();
  }

  Widget _buildSwtiches(bool filter, String title, Function updateVal) {
    return SwitchListTile(
      value: filter,
      title: Text(title),
      subtitle: Text('Only include ${title.toLowerCase()} meals '),
      onChanged: updateVal,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        actions: [
          IconButton(
              onPressed: (() {
                final selectedFilters = {
                  'gluten': _glutenFree,
                  'lactose': _lactoseFree,
                  'vegan': _vegan,
                  'vegetarian': _vegetarian,
                };
                widget.saveFilters(selectedFilters);
              }),
              icon: Icon(Icons.save))
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your meal selection',
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              _buildSwtiches(_glutenFree, 'Gluten-Free', ((value) {
                setState(() {
                  _glutenFree = value;
                });
              })),
              _buildSwtiches(_vegetarian, 'Vegetarian', ((value) {
                setState(() {
                  _vegetarian = value;
                });
              })),
              _buildSwtiches(_vegan, 'Vegan', ((value) {
                setState(() {
                  _vegan = value;
                });
              })),
              _buildSwtiches(_lactoseFree, 'Lactose-Free', ((value) {
                setState(() {
                  _lactoseFree = value;
                });
              }))
            ],
          ))
        ],
      ),
    );
  }
}
