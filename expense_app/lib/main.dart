import 'package:expense_app/widgets/user_transaction.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              //height: MediaQuery.of(context).size.height / 6,
              width: double.infinity,
              //margin: EdgeInsets.all(15),
              child: Card(
                color: Colors.red,
                elevation: 5,
                child: Text("YOOOO"),
              ),
            ),
            UserTransaction(),
          ],
        ),
      ),
    );
  }
}
