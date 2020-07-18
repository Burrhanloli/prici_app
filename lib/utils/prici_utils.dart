import 'package:flutter/material.dart';

LinearGradient linearGradient(BuildContext context,
        {Alignment end, Alignment begin}) =>
    LinearGradient(
      colors: [
        Theme.of(context).accentColor,
        Theme.of(context).primaryColor,
      ],
      end: end ?? Alignment.centerLeft,
      begin: begin ?? Alignment.centerRight,
    );