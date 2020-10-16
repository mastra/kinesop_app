import 'package:flutter/material.dart';
import './screen/login_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

TextStyle heading2gray = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.bold,
  color: Colors.grey,
);
TextStyle heading3gray = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.bold,
  color: Colors.grey,
);

TextStyle heading4 = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);
TextStyle heading4gray = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: Colors.grey,
);
TextStyle heading5gray = TextStyle(
  fontSize: 17,
  fontWeight: FontWeight.bold,
  color: Colors.grey,
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final TextStyle heading1 = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  final TextStyle heading2 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  final TextStyle heading3 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  final TextStyle heading5 = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  final TextStyle buttonText = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.normal,
    color: Colors.red,
  );
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: 'SfPro',
          //primaryColor: Colors.lightBlue[800],
          //accentColor: Colors.cyan[600],
          textTheme: TextTheme(
            headline1: heading1,
            headline2: heading2,
            headline3: heading3,
            headline4: heading4,
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
