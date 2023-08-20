import 'package:flutter/material.dart';

class NavigationHelper {
  NavigationHelper._();
  static NavigationHelper navigationHelper = NavigationHelper._();
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  navigateToWidgetWithReplacement(Widget widget) {
    navigatorKey.currentState!
        .pushReplacement(MaterialPageRoute(builder: (context) {
      return widget;
    }));
  }

  navigateToWidget(Widget widget) {
    navigatorKey.currentState!.push(MaterialPageRoute(builder: (context) {
      return widget;
    }));
  }

  navigateToWidgetAndRemoveAll(Widget widget) {
    navigatorKey.currentState!.pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) {
      return widget;
    }), (Route<dynamic> route) => false);
  }


  dynamic navigateBack([dynamic popValue]) {
    return navigatorKey.currentState!.pop(popValue);
  }
  
}
