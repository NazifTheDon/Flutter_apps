import 'package:flutter/material.dart';
import 'package:meals_app/screens/meal_details.dart';
import 'screens/categories.dart';
import 'screens/category_meals.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final ThemeData theme = ThemeData();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.red,
        colorScheme: theme.colorScheme.copyWith(secondary: Colors.amber),
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: "Raleway",
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: TextStyle(
                fontSize: 20,
                fontFamily: "Raleway",
              ),
            ),
      ),
      routes: {
        '/': (context) => Categories(),
        CategoryMeals.routeName: (context) => CategoryMeals(),
        MealDetails.routeName: ((context) => MealDetails())
      },
    );
  }
}
