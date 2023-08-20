import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taxi_app/constsnt.dart';
import 'package:taxi_app/features/auth/auth.dart';
import 'package:taxi_app/helper/helper.dart';
import 'package:taxi_app/widget/widget.dart';


class SignEmailPage extends StatelessWidget {
  const SignEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 30.w,vertical: 43.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Enter your e-mail',style: TextStyle(fontSize: 15.sp),),
              SizedBox(height: 134.h,),
              SizedBox(
                width: 315.w,
                child:   const TextField(
                  decoration: InputDecoration(
                    label: Text('email@email.com'),
                    labelStyle: TextStyle(
                      color: Colors.white70,
                    ),
                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: primaryColor,)),
                  ),
                ),
              ),
              SizedBox(height: 216.h,),
              CustomButtonWidget(title: 'Accept & Continue',onTap: () {
                NavigationHelper.navigationHelper.navigateToWidget(SignCodeEmailPage(),);
              },),
            ],
          ),
        ),
      ),
    );
  }
}
