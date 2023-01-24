import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories.dart';
import 'favorites.dart';
import '../widgets/main_drawer.dart';

class Tabs extends StatefulWidget {
  static const routeName = "/";

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  final tabs = [
    Tab(
      icon: Icon(Icons.category),
      text: 'Categories',
    ),
    Tab(
      icon: Icon(Icons.star),
      text: 'Favoriets',
    )
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = new TabController(vsync: this, length: tabs.length);

    _tabController.addListener(() {
      setState(() {
        //_selectedIndex = _controller.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tabs[_tabController.index].text),
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[Categories(), Favorites()],
      ),
      bottomNavigationBar: Container(
        color: Colors.blue,
        child: TabBar(
          tabs: tabs,
          controller: _tabController,
        ),
      ),
    );
  }
}
