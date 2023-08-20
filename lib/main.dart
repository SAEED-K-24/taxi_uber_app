import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taxi_app/constsnt.dart';
import 'package:taxi_app/features/splash_screen/splash_screen.dart';
import 'package:taxi_app/features/travel_history/travel_history.dart';
import 'package:taxi_app/helper/helper.dart';
import 'package:taxi_app/theme/theme.dart';
import 'package:taxi_app/widget/widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            theme: AppTheme.appTheme(context),
            navigatorKey: NavigationHelper.navigationHelper.navigatorKey,
            debugShowCheckedModeBanner: false,
            home: SplashScreen(),
          );
        });
  }
}

class MyWidget extends StatelessWidget {
  MyWidget({super.key});
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      // appBar: AppBar(
      //   backgroundColor: scaffoldBackgroundColor,
      //   elevation: 0.0,
      //
      // ),
      drawer:const AppDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsetsDirectional.all(20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomIconWidget(icon: Icons.format_list_bulleted,onTap: () {
                _key.currentState!.openDrawer();
              }),
            ],
          ),
        ),
      ),
    );
  }
}
