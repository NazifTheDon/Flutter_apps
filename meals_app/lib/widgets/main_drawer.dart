import 'package:flutter/material.dart';
import 'package:meals_app/screens/settings.dart';

class MainDrawer extends StatelessWidget {
  static const routeName = '/category-meals';
  @override
  Widget build(BuildContext context) {
    Widget _buildListTile(
      IconData icon,
      String title,
      Function tapHandler,
    ) {
      return ListTile(
        leading: Icon(
          icon,
          size: 26,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: tapHandler,
      );
    }

    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).colorScheme.secondary,
            child: Text(
              "Whippin' in the kitchen",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Colors.black45,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          _buildListTile(Icons.restaurant, 'Meals', () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
          _buildListTile(Icons.settings, 'Filter', () {
            Navigator.of(context).pushReplacementNamed(Settings.routeName);
          }),
        ],
      ),
    );
  }
}
