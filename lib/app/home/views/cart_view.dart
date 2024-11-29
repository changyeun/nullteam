import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testing_app/app/home/bindings/home_binding.dart';
import 'package:testing_app/app/home/controllers/home_controller.dart';
import 'package:testing_app/app/home/views/cart_input_view.dart';
import 'package:testing_app/app/home/views/success_view.dart';

class CartView extends GetView<HomeController> {
  CartView({super.key});

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
                            child: Text('장바구니', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Text('상품 리스트',
                                    style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),
                              ),
                              SizedBox(height: 10),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Wrap(
                                    children: List.generate(
                                      controller.cartList.length,
                                          (index) => Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text('${index+1}. ${controller.cartList[index]}',
                                              style: TextStyle(fontSize: 18, color: Colors.black)),
                                          SizedBox(width: 10)
                                        ],
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),

                        Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              height: 145,
                              width: Get.width,
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      Get.to(SuccessView(), binding: HomeBinding());
                                    },
                                    child: Container(
                                        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                                        decoration: BoxDecoration(
                                          color: controller.cartList.isEmpty? Colors.grey:Colors.black,
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        child: Center(child: Text('직접 수령',
                                            style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)))),
                                  ),
                                  // SizedBox(height: 10),
                                  GestureDetector(
                                    onTap: (){
                                      Get.to(CartInputView(), binding: HomeBinding());
                                    },
                                    child: Container(
                                        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                                        decoration: BoxDecoration(
                                          color: controller.cartList.isEmpty? Colors.grey:Colors.black,
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        child: Center(child: Text('배송지 입력',
                                            style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)))),
                                  ),
                                ],
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
