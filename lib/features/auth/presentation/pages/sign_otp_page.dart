import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taxi_app/constsnt.dart';
import 'package:taxi_app/features/auth/auth.dart';
import 'package:taxi_app/helper/helper.dart';
import 'package:taxi_app/widget/widget.dart';

class SignOtpPage extends StatelessWidget {
  const SignOtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 30.w,vertical: 43.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('A code has been sent to \n+91 8606722845',style: TextStyle(fontSize: 15.sp,color: primaryColor),),
              SizedBox(height: 134.h,),
              OtpTextField(
                showFieldAsBox: true,
                numberOfFields: 4,
                enabledBorderColor: primaryColor,
                fieldWidth: 51.w,
                borderRadius: BorderRadius.circular(16.r),
              ),
              SizedBox(height: 19.h,),
              Center(child: Text('Send another code',style: TextStyle(fontSize: 12.sp),)),
              SizedBox(height: 179.h,),
              CustomButtonWidget(title: 'Next',onTap: () {
                NavigationHelper.navigationHelper.navigateToWidget(SignEmailPage(),);
              },),
            ],
          ),
        ),
      ),
    );
  }
}
