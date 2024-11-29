import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with GetSingleTickerProviderStateMixin {
  LoginController();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }
}
