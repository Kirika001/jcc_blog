import 'dart:async';
import 'package:get/get.dart';
import 'package:test_jccapi/ui/login/login_screen.dart';

class SplashController extends GetxController{
  @override
  void onInit() {
    Timer(const Duration(seconds: 3), () => Get.offAll(() => const LoginScreen()));
    super.onInit();
  }
}