import 'package:flutter/material.dart';
import 'package:taxi_app/constsnt.dart';

class AppTheme{
  static ThemeData appTheme(BuildContext context) =>  ThemeData(
  scaffoldBackgroundColor: scaffoldBackgroundColor,
  textTheme: Theme.of(context).textTheme.apply(
  bodyColor: Colors.white,
  displayColor: Colors.white,
  ),
  );
}