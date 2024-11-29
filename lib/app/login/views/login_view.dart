import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:testing_app/app/home/bindings/home_binding.dart';
import 'package:testing_app/app/home/controllers/home_controller.dart';
import 'package:testing_app/app/home/views/home_view.dart';
import 'package:testing_app/app/login/controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text('N'),
      //   // elevation: 4,
      // ),
      body: Container(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 100, bottom: 50),
        child: Column(
          children: [
            // Image.asset(
            //   'assets/logo_symbol.png',
            //   height: 60,
            // ),
            Text('Food Market', style: TextStyle(fontSize: 40, color: Colors.black)),
            const SizedBox(
              height: 60,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: controller.emailController,
              style: const TextStyle(fontSize: 18, color: Colors.black),
              decoration: const InputDecoration(
                label: Text(
                  '이메일',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              obscureText: true,
              controller: controller.passwordController,
              style: const TextStyle(fontSize: 18, color: Colors.black),
              decoration: const InputDecoration(
                label: Text(
                  '비밀번호',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ),
            Spacer(),

            GestureDetector(
              onTap: () async{
                EasyLoading.show();
                await 1.delay();
                EasyLoading.dismiss();
                Get.to(HomeView(), binding: HomeBinding());
              },
              child: Container(
                width: Get.width,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50),
                ),
                child:Center(child: Text('로그인', style: const TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),)),
              ),
            ),
            SizedBox(height: 15),
            Container(
              child:Text('회원가입', style: const TextStyle(fontSize: 15, color: Colors.black),),
            )
            // FTComponent.FTButton(
            // onTap: () {
            // AuthService.to.login(controller.emailController.text, controller.passwordController.text);
            // },
            // btnText: '로그인',
            // ),
          ],
        ),
      ),
    );
  }
}
