import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tunai_mudah/app/routes/app_pages.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4), (() {
      Get.offAllNamed(Routes.ONBOARDING);
    }));

    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/icons/logo.png'),
              scale: 2,
            ),
          ),
        ),
      ),
    );
  }
}
