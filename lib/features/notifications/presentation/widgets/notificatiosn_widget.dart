import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 83.h,
      padding: EdgeInsetsDirectional.symmetric(horizontal: 20.w,vertical: 20.h),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('System',style: TextStyle(fontSize: 15.sp,),),
          SizedBox(height: 7.h,),
          Text('Your booking #1684635 has been successed!',style: TextStyle(fontSize: 12.sp,color: Colors.grey),),
        ],
      ),
    );
  }
}
