import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taxi_app/app/router.dart';
import 'package:taxi_app/features/auth/domain/model/user.dart';
import 'package:taxi_app/features/auth/domain/usecases/module.dart';
import 'package:taxi_app/helper/dialog_msg_helper.dart';

class AuthNotifier extends StateNotifier<User> {
  AuthNotifier(this.ref) : super(const User());

  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();

  final Ref ref;

  signUser() async {
    if (emailTextEditingController.text.isEmpty ||
        passwordTextEditingController.text.isEmpty ||
        nameTextEditingController.text.isEmpty ||
        phoneTextEditingController.text.isEmpty) {
      SnackbarMsgHelper.snackbarMsgHelper
          .showMsgHelper('please enter all fields');
      return;
    }
    final response = await ref.read(loginProvider).execute(
        emailTextEditingController.text, passwordTextEditingController.text);
    response.fold(
      (left) => null,
      (vid) async {
        User user = User(
          id: vid,
          email: emailTextEditingController.text,
          password: passwordTextEditingController.text,
          name: nameTextEditingController.text,
          phone: phoneTextEditingController.text,
        );
        await createUserAccount(user);
        phoneTextEditingController.clear();
        emailTextEditingController.clear();
        passwordTextEditingController.clear();
        nameTextEditingController.clear();
      },
    );
  }

  login() async {
    if (emailTextEditingController.text.isEmpty ||
        passwordTextEditingController.text.isEmpty) {
      SnackbarMsgHelper.snackbarMsgHelper
          .showMsgHelper('please enter all fields');
      return;
    }
    final response = await ref.read(loginProvider).execute(
        emailTextEditingController.text, passwordTextEditingController.text);
    response.fold((l) => null, (uid) async {
      await getUserAccount(uid);
      emailTextEditingController.clear();
      passwordTextEditingController.clear();
    });
  }

  createUserAccount(User user) async {
    await ref.read(createUserAccountProvider).execute(user);
    await getUserAccount(state.id!);
    nameTextEditingController.clear();
  }

  updateUserAccount() async {
    state = state.copyWith(
      name: nameTextEditingController.text,
    );
    await ref.read(updateUserAccountProvider).execute(state);
    await getUserAccount(state.id!);
  }

  getUserAccount(String uid) async {
    final response = await ref.read(getUserAccountProvider).execute(uid);
    response.fold(
        (l) =>
            SnackbarMsgHelper.snackbarMsgHelper.showMsgHelper('User not Found'),
        (user) {
      state = user;
      router.pushNamed('mappage');
    });
  }
}
