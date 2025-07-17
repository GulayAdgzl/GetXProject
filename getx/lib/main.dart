import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/home_page/home_binding.dart';
import 'package:getx/home_page/home_page.dart';
import 'package:getx/home_page/sayac_controller.dart';
import 'package:getx/home_page/sayi_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            name: '/', page: () => const MyHomePage(), binding: HomeBinding()),
      ],
      initialRoute: '/',
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
