import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taxi_app/constsnt.dart';
import 'package:taxi_app/features/notifications/notifications.dart';
import 'package:taxi_app/features/travel_history/travel_history.dart';
import 'package:taxi_app/helper/helper.dart';
import 'package:taxi_app/widget/widget.dart';

class AppDrawer extends StatelessWidget{
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      backgroundColor: scaffoldBackgroundColor,
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.only(top: 40.h),
        children: [
          Column(
            children: [
              Container(
                height: 101.h,
                width: 101.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white70,
                ),
              ),
              SizedBox(height: 20.h,),
              Text('Name name',style: TextStyle(fontSize: 18.sp),),
              SizedBox(height: 10.h,),
              Text('sebinf96@gmail.com',style: TextStyle(fontSize: 12.sp,color: Colors.white70),),
            ],
          ),
          SizedBox(height: 50.h,),
          Container(
            height: 0.2.h,
            width: 100.w,
            color: primaryColor,
          ),
          SizedBox(height: 50.h,),
          ListTile(
            leading: const CustomIconWidget(icon: Icons.home,),
            title:  Text('Home',style: TextStyle(fontSize: 18.sp),),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 30.h,),
          ListTile(
            leading: const CustomIconWidget(icon: Icons.history,),
            title:  Text('Travel History',style: TextStyle(fontSize: 18.sp),),
            onTap: () {
              NavigationHelper.navigationHelper.navigateToWidget(TravelHistoryPage(),);
            },
          ),
          SizedBox(height: 30.h,),
          ListTile(
            leading: const CustomIconWidget(icon: Icons.notifications,),
            title:  Text('Notifications',style: TextStyle(fontSize: 18.sp),),
            onTap: () {
              NavigationHelper.navigationHelper.navigateToWidget(NotificationsPage(),);
            },
          ),
          SizedBox(height: 30.h,),
          ListTile(
            leading: const CustomIconWidget(icon: Icons.settings,),
            title:  Text('Settings',style: TextStyle(fontSize: 18.sp),),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 30.h,),
          ListTile(
            leading: const CustomIconWidget(icon: Icons.logout,),
            title:  Text('Logout',style: TextStyle(fontSize: 18.sp),),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}