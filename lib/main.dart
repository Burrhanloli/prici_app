import 'package:flutter/material.dart';
import 'package:prici_app/pages/splash_sceen.dart';
import 'package:prici_app/utils/theme.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: lightTheme(),
        darkTheme: darkTheme(),
        home: SplashScreen());
  }
}
