import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testing_app/app/home/controllers/home_controller.dart';

class SuccessView extends GetView<HomeController> {
  SuccessView({this.is3back = false, super.key});

  bool is3back;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Center(
              child: Container(
                child: Text('주문이\n완료 되었습니다!', textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold)),
              ),
            ),


            Positioned(
                bottom: 0,
                child: Container(
                  height: 110,
                  width: Get.width,
                  color: Colors.white,
                  child: GestureDetector(
                    onTap: (){
                      if(is3back){
                        Get.back();
                      }
                      Get.back();
                      Get.back();
                      controller.allPointInit();
                    },
                    child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(child: Text('처음으로 돌아가기',
                            style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)))),
                  ),
                ))
          ],
        ));
  }
}
