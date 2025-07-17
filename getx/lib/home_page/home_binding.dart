import 'package:get/get.dart';
import 'package:getx/home_page/sayac_controller.dart';
import 'package:getx/home_page/sayi_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    // Controller'ları uygulama başlamadan önce kaydediyoruz.
    Get.put(SayacController());
    Get.put(SayiController());
  }
}
