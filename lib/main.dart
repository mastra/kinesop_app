import 'package:flutter/material.dart';
import './screen/login_screen.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
//import 'package:flutter/rendering.dart';

void main() {
  //debugPaintSizeEnabled = true;
  initializeDateFormatting().then((_) => runApp(MyApp()));
}

TextStyle heading1 = TextStyle(
  fontSize: 34,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);
TextStyle heading2 = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

TextStyle heading3 = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

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
TextStyle heading5 = TextStyle(
  fontSize: 17,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);
TextStyle heading5gray = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.bold,
  color: Colors.grey,
);
TextStyle bodytext1 = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.normal,
  color: Colors.black,
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

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
          fontFamily: 'Poppins',
          //primaryColor: Colors.lightBlue[800],
          //accentColor: Colors.cyan[600],
          textTheme: TextTheme(
            headline1: heading1,
            headline2: heading2,
            headline3: heading3,
            headline4: heading4,
            headline5: heading5,
            button: buttonText,
            bodyText1: bodytext1,
          ),
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          buttonTheme: ButtonThemeData(
            padding: EdgeInsets.all(14),
            buttonColor: Colors.black,
            textTheme: ButtonTextTheme.normal,
          )),
      home: LoginScreen(),
    );
  }
}
