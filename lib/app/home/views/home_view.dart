import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testing_app/app/home/bindings/home_binding.dart';
import 'package:testing_app/app/home/controllers/home_controller.dart';
import 'package:testing_app/app/home/views/cart_view.dart';
import 'package:testing_app/app/home/views/sugar_goods_view.dart';

class HomeView extends GetView<HomeController> {
  HomeView({super.key});

  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        body: Obx(() => Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      SizedBox(height: 60),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text('   ${controller.point.value}P', style: TextStyle(fontSize: 15, color: Colors.transparent)),
                          ),
                          Container(
                            child: Text('FOOD MARKET', style: TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            child: Text('${controller.point.value}P   ', style: TextStyle(fontSize: 14, color: Colors.black)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      SingleChildScrollView(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      Get.to(() => SugarGoodsView());
                                    },
                                    child: Container(
                                      width: Get.width-20,
                                      padding: const EdgeInsets.symmetric(vertical: 5),
                                      decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(child: Text('건강 추천 패키지',
                                      style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold))))



                                    // Container(
                                    //   child: Text(
                                    //     "건강 추천 패키지",
                                    //     style: TextStyle(fontSize: 15, color: Colors.blue),
                                    //   ),
                                    // ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),

                              //5 point
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Text(
                                      "5 Point",
                                      style: TextStyle(fontSize: 15, color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                      child: Container(
                                        child: Wrap(
                                            children: List.generate(
                                              controller.point5Goods.length,
                                                  (index) => Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Checkbox(
                                                    activeColor: Colors.black,
                                                    checkColor: Colors.black,
                                                    side: MaterialStateBorderSide.resolveWith(
                                                          (states) => const BorderSide(width: 1.0, color: Colors.black),
                                                    ),
                                                    value: controller.point5Goods[index],
                                                    onChanged: (value) {
                                                      if(value as bool){
                                                        if(controller.point.value - 5 >= 0){
                                                          controller.point.value = controller.point.value - 5;
                                                          controller.cartList.add(controller.point5GoodsName[index]);
                                                          controller.point5Goods[index] = value!;
                                                        } else{
                                                          Get.snackbar('', '포인트가 없습니다.');
                                                        }
                                                      } else{
                                                        controller.point.value = controller.point.value + 5;
                                                        controller.cartList.remove(controller.point5GoodsName[index]);
                                                        controller.point5Goods[index] = value!;
                                                      }
                                                    },
                                                  ),
                                                  Text('${controller.point5GoodsName[index]}',
                                                      style: TextStyle(fontSize: 15, color: Colors.black)),
                                                ],
                                              ),
                                            )),
                                      ))
                                ],
                              ),
                              const Divider(
                                thickness: 1,
                                height: 1,
                                color: Color.fromRGBO(0, 0, 0, 0.1),
                              ),

                              //3 point
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Text(
                                      "3 Point",
                                      style: TextStyle(fontSize: 15, color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                      child: Container(
                                        child: Wrap(
                                            children: List.generate(
                                              controller.point3Goods.length,
                                                  (index) => Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Checkbox(
                                                    activeColor: Colors.black,
                                                    checkColor: Colors.black,
                                                    side: MaterialStateBorderSide.resolveWith(
                                                          (states) => const BorderSide(width: 1.0, color: Colors.black),
                                                    ),
                                                    value: controller.point3Goods[index],
                                                    onChanged: (value) {
                                                      if(value as bool){
                                                        if(controller.point.value - 3 >= 0){
                                                          controller.point.value = controller.point.value - 3;
                                                          controller.cartList.add(controller.point3GoodsName[index]);
                                                          controller.point3Goods[index] = value!;
                                                        } else{
                                                          Get.snackbar('', '포인트가 없습니다.');
                                                        }
                                                      } else{
                                                        controller.point.value = controller.point.value + 3;
                                                        controller.cartList.remove(controller.point3GoodsName[index]);
                                                        controller.point3Goods[index] = value!;
                                                      }
                                                    },
                                                  ),
                                                  Text('${controller.point3GoodsName[index]}',
                                                      style: TextStyle(fontSize: 15, color: Colors.black)),
                                                ],
                                              ),
                                            )),
                                      ))
                                ],
                              ),
                              const Divider(
                                thickness: 1,
                                height: 1,
                                color: Color.fromRGBO(0, 0, 0, 0.1),
                              ),

                              //2 point
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Text(
                                      "2 Point",
                                      style: TextStyle(fontSize: 15, color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                      child: Container(
                                        child: Wrap(
                                            children: List.generate(
                                              controller.point2Goods.length,
                                                  (index) => Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Checkbox(
                                                    activeColor: Colors.black,
                                                    checkColor: Colors.black,
                                                    side: MaterialStateBorderSide.resolveWith(
                                                          (states) => const BorderSide(width: 1.0, color: Colors.black),
                                                    ),
                                                    value: controller.point2Goods[index],
                                                    onChanged: (value) {
                                                      if(value as bool){
                                                        if(controller.point.value - 2 >= 0){
                                                          controller.point.value = controller.point.value - 2;
                                                          controller.cartList.add(controller.point2GoodsName[index]);
                                                          controller.point2Goods[index] = value!;
                                                        } else{
                                                          Get.snackbar('', '포인트가 없습니다.');
                                                        }
                                                      } else{
                                                        controller.point.value = controller.point.value + 2;
                                                        controller.cartList.remove(controller.point2GoodsName[index]);
                                                        controller.point2Goods[index] = value!;
                                                      }
                                                    },
                                                  ),
                                                  Text('${controller.point2GoodsName[index]}',
                                                      style: TextStyle(fontSize: 15, color: Colors.black)),
                                                ],
                                              ),
                                            )),
                                      ))
                                ],
                              ),
                              const Divider(
                                thickness: 1,
                                height: 1,
                                color: Color.fromRGBO(0, 0, 0, 0.1),
                              ),

                              //1 point
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Text(
                                      "1 Point",
                                      style: TextStyle(fontSize: 15, color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                      child: Container(
                                        child: Wrap(
                                            children: List.generate(
                                              controller.point1Goods.length,
                                                  (index) => Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Checkbox(
                                                    activeColor: Colors.black,
                                                    checkColor: Colors.black,
                                                    side: MaterialStateBorderSide.resolveWith(
                                                          (states) => const BorderSide(width: 1.0, color: Colors.black),
                                                    ),
                                                    value: controller.point1Goods[index],
                                                    onChanged: (value) {
                                                      if(value as bool){
                                                        if(controller.point.value - 1 >= 0){
                                                          controller.point.value = controller.point.value - 1;
                                                          controller.cartList.add(controller.point1GoodsName[index]);
                                                          controller.point1Goods[index] = value!;
                                                        } else{
                                                          Get.snackbar('', '포인트가 없습니다.');
                                                        }
                                                      } else{
                                                        controller.point.value = controller.point.value + 1;
                                                        controller.cartList.remove(controller.point1GoodsName[index]);
                                                        controller.point1Goods[index] = value!;
                                                      }
                                                    },
                                                  ),
                                                  Text('${controller.point1GoodsName[index]}',
                                                      style: TextStyle(fontSize: 15, color: Colors.black)),
                                                ],
                                              ),
                                            )),
                                      ))
                                ],
                              ),
                              // const Divider(
                              //   thickness: 1,
                              //   height: 1,
                              //   color: Color.fromRGBO(0, 0, 0, 0.1),
                              // ),

                              SizedBox(height: 100),
                            ],
                          ),
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
                                if(controller.cartList.isNotEmpty){
                                  Get.to(CartView(), binding: HomeBinding());
                                } else{
                                  Get.snackbar('', '상품을 선택해 주세요.');
                                }
                              },
                              child: Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                                  decoration: BoxDecoration(
                                    color: controller.cartList.isEmpty? Colors.grey:Colors.black,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Center(child: Text('장바구니 이동',
                                      style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)))),
                            ),
                          ))

                    ],
                  ),
                )
              ],
            )));
  }
}
