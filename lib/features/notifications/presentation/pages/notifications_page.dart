import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taxi_app/constsnt.dart';
import 'package:taxi_app/features/notifications/notifications.dart';
import 'package:taxi_app/helper/helper.dart';
import 'package:taxi_app/widget/widget.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding:  EdgeInsets.all(20.0.h),
          child: Column(
            children: [
              Row(
                children: [
                  CustomIconWidget(icon: Icons.arrow_back_ios_sharp,onTap: () {
                    NavigationHelper.navigationHelper.navigateBack();
                  },),
                  SizedBox(width: 20.w,),
                  Text('Notifications',style: TextStyle(fontSize: 24.sp),),
                ],
              ),
              SizedBox(height: 26.h,),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder:
                  (context, index) {
                    return NotificationWidget();
                  }, separatorBuilder: (context, index) {
                    return SizedBox(height: 20.h);
                  }, itemCount: 10),
            ],
          ),
        ),
      ),
    );
  }
}
