import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testing_app/app/home/bindings/home_binding.dart';
import 'package:testing_app/app/home/controllers/home_controller.dart';
import 'package:testing_app/app/home/views/success_view.dart';

class CartInputView extends GetView<HomeController> {
  CartInputView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        body: Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      SizedBox(height: 60),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          IconButton(
                            onPressed: () async {
                              Get.back();
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios_sharp,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                          Container(
                            child: Text('배송지 입력하기', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),
                          ),
                          IconButton(
                            onPressed: () async {
                              // Get.back();
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios_sharp,
                              color: Colors.transparent,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: Get.width,
                    child: Stack(
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: 20),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(children: [
                                  Container(
                                    width: 80,
                                      child: Text('이름 :', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold))),
                                  SizedBox(width: 20),
                                  Expanded(child: Text('고윤준', style: TextStyle(fontSize: 18, color: Colors.black)))
                                ]),
                              ),
                              SizedBox(height: 10),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(children: [
                                  Container(
                                      width: 80,
                                      child: Text('주소 :', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold))),
                                  SizedBox(width: 20),
                                  Expanded(child: Text('제주시 중앙로 248, 4층', style: TextStyle(fontSize: 18, color: Colors.black)))
                                ]),
                              ),
                              SizedBox(height: 10),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(children: [
                                  Container(
                                      width: 80,
                                      child: Text('결제수단 :', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold))),
                                  SizedBox(width: 20),
                                  Expanded(child: Text('신용카드', style: TextStyle(fontSize: 18, color: Colors.black)))
                                ]),
                              ),
                              SizedBox(height: 10),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(children: [
                                  Container(
                                      width: 80,
                                      child: Text('카드종류 :', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold))),
                                  SizedBox(width: 20),
                                  Expanded(child: Text('국민카드', style: TextStyle(fontSize: 18, color: Colors.black)))
                                ]),
                              ),
                              SizedBox(height: 10),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(children: [
                                  Container(
                                      width: 80,
                                      child: Text('카드번호 :', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold))),
                                  SizedBox(width: 20),
                                  Expanded(child: Text('xxxx-xxxx-xxxx-xxx', style: TextStyle(fontSize: 18, color: Colors.black)))
                                ]),
                              ),
                              SizedBox(height: 10),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(children: [
                                  Container(
                                      width: 80,
                                      child: Text('년/월 :', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold))),
                                  SizedBox(width: 20),
                                  Expanded(child: Text('12/11', style: TextStyle(fontSize: 18, color: Colors.black)))
                                ]),
                              ),
                              SizedBox(height: 10),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(children: [
                                  Container(
                                      width: 80,
                                      child: Text('CVC :', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold))),
                                  SizedBox(width: 20),
                                  Expanded(child: Text('332', style: TextStyle(fontSize: 18, color: Colors.black)))
                                ]),
                              ),
                              SizedBox(height: 10),
                            ],
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
                                  Get.to(SuccessView(is3back: true), binding: HomeBinding());
                                },
                                child: Container(
                                    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Center(child: Text('입력 완료',
                                        style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)))),
                              ),
                            ))

                      ],
                    ),
                  ),
                ),





              ],
            ));
  }
}
