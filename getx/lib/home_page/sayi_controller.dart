import 'dart:math';

import 'package:get/get.dart';

class SayiController extends GetxController {
  Rx<int> randomSayi = 0.obs;

  void uret() {
    randomSayi.value = Random().nextInt(100);
  }
}
