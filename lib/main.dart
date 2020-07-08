import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prici_app/theme.dart';
import 'package:prici_app/pages/home_page.dart';

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
        home: const HomePage());
  }
}
