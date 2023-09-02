import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:taxi_app/app/constsnt.dart';
import 'package:taxi_app/widgets/widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: 619.h,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              color: secondColor.withOpacity(0.85),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(28.r),
                bottomRight: Radius.circular(28.r),
              ),
            ),
            padding: EdgeInsetsDirectional.only(top: 97.4.h),
            child: Column(
              children: [
                Text(
                  'UBER',
                  style: TextStyle(
                    fontSize: 40.sp,
                  ),
                ),
                SizedBox(
                  height: 21.7.h,
                ),
                Text(
                  'Get there.',
                  style: TextStyle(
                    fontSize: 24.sp,
                  ),
                ),
                SizedBox(
                  height: 52.h,
                ),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 318.w,
                        height: 318.h,
                        decoration: BoxDecoration(
                          color: primaryColor.withOpacity(0.5),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 40,
                      right: -140,
                      child: Container(
                        width: 375.w,
                        height: 318.h,
                        margin: EdgeInsetsDirectional.only(start: 100.w),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image:
                                AssetImage('assets/images/car_splash_icon.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 80.h,
          ),
          CustomButtonWidget(
            title: 'Get Started',
            onTap: () {
              context.goNamed('phone');
            },
          ),
        ],
      )),
    );
  }
}
