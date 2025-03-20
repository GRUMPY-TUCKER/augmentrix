import 'package:augmaze/screens/forgotPassword/controller/forgotPassword.controller.dart';
import 'package:augmaze/screens/forgotPassword/view/forgotPassword.view.dart';
import 'package:augmaze/screens/signUp/view/signUp.view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../utils/route.utils.dart';

class LoginController extends GetxController{
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController role = TextEditingController();

  forgotPassword() {
    RoutesUtil.to(()=>ForgotPasswordView());
  }

  goToSignup() {
    RoutesUtil.offAll(() => SignUpView());
  }
}