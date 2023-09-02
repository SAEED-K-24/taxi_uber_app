import 'package:flutter/material.dart';
import 'package:taxi_app/app/router.dart';

class SnackbarMsgHelper {
  SnackbarMsgHelper._();
  static SnackbarMsgHelper snackbarMsgHelper = SnackbarMsgHelper._();
  void showMsgHelper(String msg) =>
      ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(SnackBar(
        content: Text(msg),
      ));
}
