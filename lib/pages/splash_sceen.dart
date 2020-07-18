import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gradient_text/gradient_text.dart';
import 'package:prici_app/pages/home_page.dart';
import 'package:prici_app/utils/prici_utils.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future startTime() async {
    const _duration = Duration(seconds: 3);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: "prici",
              child: GradientText("Prici",
                  gradient: linearGradient(context),
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      .copyWith(fontWeight: FontWeight.bold)),
            ),
            GradientText("Business at your",
                gradient: linearGradient(context),
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(fontWeight: FontWeight.bold)),
            GradientText("fingertips",
                gradient: linearGradient(context),
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
