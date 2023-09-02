import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taxi_app/app/constsnt.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({super.key,required this.title,this.onTap});
  final String title;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 315.w,
        height: 56.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: secondColor,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Text(title,style: TextStyle(fontSize: 15.sp),),
      ),
    );
  }
}
