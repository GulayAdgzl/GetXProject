import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/animations/animation_binding.dart';
import 'package:getx/animations/animation_page.dart';
import 'package:getx/core/initial_binding.dart';
import 'package:getx/home_page/home_binding.dart';
import 'package:getx/home_page/home_page.dart';
import 'package:getx/second/second_binding.dart';
import 'package:getx/second/second_page.dart';
import 'package:getx/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/splash',
          page: () => const SplashPage(),
        ),
        GetPage(
            name: '/home',
            page: () => const MyHomePage(),
            binding: HomeBinding()),
        GetPage(
            name: '/second',
            page: () => const SecondPage(),
            binding: SecondBinding()),
        GetPage(
            name: '/animation',
            page: () => const AnimationPage(),
            binding: AnimationBinding()),
      ],
      initialRoute: '/splash',
      initialBinding: InitialBinding(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
