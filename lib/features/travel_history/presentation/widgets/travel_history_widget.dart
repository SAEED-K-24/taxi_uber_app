import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taxi_app/app/constsnt.dart';
import 'package:taxi_app/widgets/widget.dart';

class TravelHistoryWidget extends StatefulWidget {
  const TravelHistoryWidget({super.key});

  @override
  State<TravelHistoryWidget> createState() => _TravelHistoryWidgetState();
}

class _TravelHistoryWidgetState extends State<TravelHistoryWidget> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        isTapped  =true;
        setState(() {});
      },
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            margin: EdgeInsetsDirectional.only(bottom:isTapped ? 20.h: 0.h),
            width: 335.w,
            height:isTapped ? 300.h : 174.h,
            // alignment: Alignment.center,
            padding: EdgeInsetsDirectional.only(start: 31.w,top: 20.h,bottom: 20.h),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 10.h,
                          width: 10.w,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: primaryColor
                          ),
                        ),
                        Container(
                          height: 92.h,
                          width: 0.2.w,
                          color: Colors.white70,
                        ),
                        Container(
                          height: 10.h,
                          width: 10.w,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF70B200),
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 15.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('PICK UP',style: TextStyle(fontSize: 12.sp,color: Colors.grey),),
                            SizedBox(width: 150.w,),
                            Text('10.:30 AM',style: TextStyle(fontSize: 12.sp,color: Colors.grey),),

                          ],
                        ),
                        SizedBox(height: 5.h,),
                        Text("St Micheal's Church",style: TextStyle(fontSize: 15.sp,),),
                        SizedBox(height: 24.h,),
                        Container(
                          width: 253.5.w,
                          height: 0.2.h,
                          color: Colors.white70,
                        ),
                        SizedBox(height: 24.h,),
                        Row(
                          children: [
                            Text('DROP OFF',style: TextStyle(fontSize: 12.sp,color: Colors.grey),),
                            SizedBox(width: 150.w,),
                            Text('02:02 PM',style: TextStyle(fontSize: 12.sp,color: Colors.grey),),

                          ],
                        ),
                        SizedBox(height: 5.h,),
                        Text("Tennis Court",style: TextStyle(fontSize: 15.sp,),),
                      ],
                    ),
                  ],
                ),
                isTapped ? Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 40.h,),
                      Text('car name',style: TextStyle(fontSize: 30.sp),),
                      SizedBox(height: 20.h,),
                      Text('\$40',style: TextStyle(fontSize: 18.sp,color: Colors.grey),),
                    ],
                  ),
                ): Container(),
              ],
            ),
          ),
          isTapped ? CustomIconWidget(icon: Icons.keyboard_arrow_up_rounded,onTap: () {
              isTapped = false;
              setState(() {});
            },)
          :Container(),
        ],
      ),
    );
  }
}
