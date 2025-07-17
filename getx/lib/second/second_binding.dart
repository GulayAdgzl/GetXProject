import 'package:get/get.dart';
import 'package:getx/second/second_controller.dart';

class SecondBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SecondController>(() => SecondController());
  }
}
