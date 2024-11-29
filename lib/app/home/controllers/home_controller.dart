import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with GetSingleTickerProviderStateMixin {
  HomeController();
  final oneController = TextEditingController();
  final twoController = TextEditingController();
  final threeController = TextEditingController();
  final fourController = TextEditingController();
  final fiveController = TextEditingController();

  //초기 포인트
  RxInt point = 100.obs;
  RxList cartList = [].obs;
  // 일반 :
  // 콩, 귀리, 통밀, 현미, 보리, 브로콜리, 시금치, 아보카도, 토마토, 당근, 콜리플라워, 아몬드, 호두, 연어, 고등어, 참치, 닭가슴살, 두부, 병아리콩, 렌틸콩, 블루베리, 라즈베리, 딸기, 석류, 고구마, 올리브, 달걀, 참기름, 콩기름
  //
  // 당뇨 환자 기피 음식 :
  // 설탕, 흰 밀가루, 쌀, 감자, 꿀, 탄산음료, 과일 주스, 돼지고기, 소고기, 시럽, 감자튀김, 도넛, 아이스크림, 팝콘, 버터, 케이크, 쿠키, 소시지, 베이컨, 닭강정, 새우튀김, 라면, 옥수수 전분, 파스타, 식빵, 머핀, 크래커, 프레첼, 시리얼, 장아찌, 젓갈, 치즈, 믹스커피
  //
  //
  // 가격 - 품목
  // 5 -	소시지, 베이컨, 닭강정, 새우튀김, 돼지고기, 소고기,연어, 고등어, 참치,
  // 3 -	설탕, 쌀, 꿀, 시럽, 감자튀김, 시리얼, 장아찌, 젓갈, 아이스크림, 콜리플라워, 닭가슴살, 두부, 블루베리, 라즈베리, 딸기, 석류, 참기름, 콩기름
  // 2 -	흰 밀가루, 옥수수 전분, 도넛, 치즈, 시리얼, 빵, 콩, 귀리, 통밀, 현미, 보리, 아몬드, 호두, 고구마, 달걀,
  // 1 -	라면, 쿠키, 믹스커피, 탄산음료, 과일 주스, 브로콜리, 시금치, 토마토, 당근, 병아리콩, 렌틸콩,

  //추천 상품 리스트
  List sugarCartList = ['콩', '귀리', '통밀', '현미', '보리', '브로콜리', '시금치', '아보카도', '토마토', '당근'];

  //포인트별 리스트
  // RxList point20Goods = [false, false, false, false, false, false, false, false, false].obs;
  // RxList point20GoodsName = ['aaa','bbb','cccc','ddd','eee','fff','ggg','hhh','iii'].obs;
  //
  // RxList point15Goods = [false, false, false, false, false, false, false, false, false, false, false, false].obs;
  // RxList point15GoodsName = ['aaa','bbb','cccc','ddd','eee','fff','ggg','hhh','iii', 'jjj', 'kkk', 'lll'].obs;
  //
  // RxList point10Goods = [false, false, false, false, false, false].obs;
  // RxList point10GoodsName = ['aaa','bbb','cccc','ddd','eee','fff'].obs;

  RxList point5Goods = [false, false, false, false, false, false, false, false, false].obs;
  RxList point5GoodsName = ['소시지', '베이컨', '닭강정', '새우튀김', '돼지고기', '소고기', '연어', '고등어', '참치'].obs;

  RxList point3Goods = [false, false, false, false, false, false, false, false, false, false, false, false, false, false,
    false, false, false, false].obs;
  RxList point3GoodsName = ['설탕', '쌀', '꿀', '시럽', '감자튀김', '시리얼', '장아찌', '젓갈', '아이스크림', '콜리플라워', '닭가슴살', '두부', '블루베리',
  '라즈베리', '딸기', '석류', '참기름', '콩기름'].obs;

  RxList point2Goods = [false, false, false, false, false, false, false, false, false, false, false, false, false, false, false].obs;
  RxList point2GoodsName = ['흰 밀가루', '옥수수 전분', '도넛', '치즈', '시리얼', '빵', '콩', '귀리', '통밀', '현미', '보리', '아몬드', '호두', '고구마', '달걀'].obs;

  RxList point1Goods = [false, false, false, false, false, false, false, false, false, false, false].obs;
  RxList point1GoodsName = ['라면', '쿠키', '믹스커피', '탄산음료', '과일 주스', '브로콜리', '시금치', '토마토', '당근', '병아리콩', '렌틸콩'].obs;


  @override
  void onInit() {
    super.onInit();
  }

  void allPointInit(){
    cartList.value = [];
    // for(int i=0;i<point20Goods.length;i++){
    //   point20Goods[i] = false;
    // }
    // for(int i=0;i<point15Goods.length;i++){
    //   point15Goods[i] = false;
    // }
    // for(int i=0;i<point10Goods.length;i++){
    //   point10Goods[i] = false;
    // }
    for(int i=0;i<point5Goods.length;i++){
      point5Goods[i] = false;
    }
    for(int i=0;i<point3Goods.length;i++){
      point3Goods[i] = false;
    }
    for(int i=0;i<point2Goods.length;i++){
      point2Goods[i] = false;
    }
    for(int i=0;i<point1Goods.length;i++){
      point1Goods[i] = false;
    }
  }
}
