import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/splash/splash_controller.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatelessWidget {
  SplashPage({super.key});

  final SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset('assets/loading.json'),
      ),
    );
  }
}
