import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:taxi_app/app/constsnt.dart';
import 'package:taxi_app/features/auth/presentation/state/module.dart';
import 'package:taxi_app/widgets/widget.dart';

class SignUserPage extends ConsumerWidget {
  const SignUserPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.read(userStateNotifier.notifier);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding:
              EdgeInsetsDirectional.symmetric(horizontal: 30.w, vertical: 43.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'SIGN UP',
                    style: TextStyle(fontSize: 15.sp),
                  ),
                  IconButton(
                      onPressed: () {
                        if (context.canPop()) context.pop();
                      },
                      icon: const Icon(Icons.keyboard_arrow_right_outlined)),
                ],
              ),
              SizedBox(
                height: 134.h,
              ),
              TextField(
                controller: userState.nameTextEditingController,
                decoration: const InputDecoration(
                  label: Text('Name'),
                  labelStyle: TextStyle(
                    color: Colors.white70,
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: primaryColor,
                  )),
                ),
                keyboardType: TextInputType.name,
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                controller: userState.emailTextEditingController,
                decoration: const InputDecoration(
                  label: Text('Email'),
                  labelStyle: TextStyle(
                    color: Colors.white70,
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: primaryColor,
                  )),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                controller: userState.passwordTextEditingController,
                decoration: const InputDecoration(
                  label: Text('Password'),
                  labelStyle: TextStyle(
                    color: Colors.white70,
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: primaryColor,
                  )),
                ),
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(
                height: 20.h,
              ),
              RichText(
                text: TextSpan(
                  text: 'By countinuing, I confirm I have\n',
                  style: TextStyle(fontSize: 12.sp),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'read the',
                      style: TextStyle(fontSize: 12.sp),
                    ),
                    TextSpan(
                      text: '\t\tPrivacy Policy',
                      style: TextStyle(fontSize: 12.sp, color: primaryColor),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 161.h,
              ),
              CustomButtonWidget(
                title: 'Accept & Continue',
                onTap: () async {
                  await userState.signUser();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
