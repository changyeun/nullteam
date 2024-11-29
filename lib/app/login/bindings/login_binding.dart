import 'package:get/get.dart';
import 'package:testing_app/app/home/controllers/home_controller.dart';
import 'package:testing_app/app/login/controllers/login_controller.dart';

class LoginBinding extends Bindings {
  LoginBinding();

  @override
  void dependencies() {
    Get.put(LoginController());
  }
}
