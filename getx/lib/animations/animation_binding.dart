import 'package:get/get.dart';
import 'package:getx/animations/animation_controller.dart';

class AnimationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AnimationsController());
  }
}
