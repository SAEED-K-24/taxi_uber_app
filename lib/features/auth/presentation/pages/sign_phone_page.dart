import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taxi_app/constsnt.dart';
import 'package:taxi_app/features/auth/auth.dart';
import 'package:taxi_app/helper/helper.dart';
import 'package:taxi_app/widget/widget.dart';

class SignPhonePage extends StatelessWidget {
  const SignPhonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 30.w,vertical: 43.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Enter your phone number',style: TextStyle(fontSize: 15.sp),),
              SizedBox(height: 134.h,),
              Row(
                children: [
                  SizedBox(
                    width: 55.w,
                    child:   const TextField(
                      decoration: InputDecoration(
                        label: Text('+09'),
                        labelStyle: TextStyle(
                          color: Colors.white70,
                        ),
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: primaryColor,)),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w,),
                  SizedBox(
                    width: 240.w,
                    child:   const TextField(
                      decoration: InputDecoration(
                        label: Text('99999999999'),
                        labelStyle: TextStyle(
                          color: Colors.white70,
                        ),
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: primaryColor,)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h,),
              RichText(
                text: TextSpan(
                  text: 'By countinuing, I confirm I have\n',
                  style:TextStyle(fontSize: 12.sp),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'read the',
                      style:TextStyle(fontSize: 12.sp),
                    ),
                    TextSpan(
                      text: '\t\tPrivacy Policy',
                      style:TextStyle(fontSize: 12.sp,color: primaryColor),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 161.h,),
              CustomButtonWidget(title: 'Accept & Continue',onTap: () {
                NavigationHelper.navigationHelper.navigateToWidget(SignOtpPage(),);
              },),
            ],
          ),
        ),
      ),
    );
  }
}
