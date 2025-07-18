import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimationsController extends GetxController {
  final containerWidth = 100.0.obs;
  final containerHeight = 100.0.obs;
  final containerColor = Colors.blue.obs;
  final containerRadius = 15.0.obs;

  void boyutDegis() {
    // Değişkenleri rastgele değerlerle güncelle
    containerWidth.value = containerWidth.value == 100.0 ? 200.0 : 100.0;
    containerHeight.value = containerHeight.value == 100.0 ? 200.0 : 100.0;
  }
}
