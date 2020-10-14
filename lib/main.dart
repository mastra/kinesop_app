import 'package:flutter/material.dart';
import './screen/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final TextStyle heading1 = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  final TextStyle heading5 = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.bold,
    color: Colors.grey,
  );
  final TextStyle buttonText = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.normal,
    color: Colors.red,
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: 'SfPro',
          //primaryColor: Colors.lightBlue[800],
          //accentColor: Colors.cyan[600],
          textTheme: TextTheme(
            headline1: heading1,
            headline5: heading5,
            button: buttonText,
          ),
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          buttonTheme: ButtonThemeData(
            padding: EdgeInsets.all(20),
            buttonColor: Colors.black,
            textTheme: ButtonTextTheme.normal,
          )),
      home: LoginScreen(),
    );
  }
}
