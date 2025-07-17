import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/core/initial_binding.dart';
import 'package:getx/home_page/home_binding.dart';
import 'package:getx/home_page/home_page.dart';
import 'package:getx/second/second_binding.dart';
import 'package:getx/second/second_page.dart';

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
            name: '/home',
            page: () => const MyHomePage(),
            binding: HomeBinding()),
        GetPage(
            name: '/second',
            page: () => const SecondPage(),
            binding: SecondBinding()),
      ],
      initialRoute: '/home',
      initialBinding: InitialBinding(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
