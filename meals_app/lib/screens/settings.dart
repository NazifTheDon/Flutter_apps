import 'package:flutter/material.dart';
import 'package:meals_app/widgets/main_drawer.dart';

class Settings extends StatelessWidget {
  const Settings({Key key}) : super(key: key);
  static const routeName = '/settings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      drawer: MainDrawer(),
      body: Text('Settings'),
    );
  }
}
