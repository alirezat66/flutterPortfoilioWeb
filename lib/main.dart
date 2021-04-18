import 'package:flutter/material.dart';
import 'package:flutter_web_portfoilio/page/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff333746),
        primaryColorDark: Color(0xff242834),
        accentColor: Color(0xffFFC25C),
        fontFamily: 'Gilroy',
        textTheme: TextTheme(
          button: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Color(0xFFFFC25C)),
          headline5: TextStyle(fontSize: 20.0, color: Colors.white),
          headline4: TextStyle(
              fontSize: 18.0, fontWeight: FontWeight.w400, color: Colors.white),
          headline3: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.w600, color: Colors.white),
          headline2: TextStyle(
              fontSize: 28.0, fontWeight: FontWeight.w500, color: Colors.white),
          headline1: TextStyle(
              fontSize: 22.0, fontWeight: FontWeight.w300, color: Colors.white),
          subtitle1: TextStyle(
              fontSize: 15.0, fontWeight: FontWeight.w500, color: Colors.white),
          headline6: TextStyle(
              fontSize: 16.0, fontWeight: FontWeight.w200, color: Colors.white),
          bodyText2: TextStyle(fontSize: 12.0, color: Colors.white),
          bodyText1: TextStyle(
              fontSize: 42, fontWeight: FontWeight.w400, color: Colors.white),
          caption: TextStyle(fontSize: 12.0, color: Colors.white),
        ),
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
      },
    );
  }
}
