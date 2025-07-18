import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/animations/animation_controller.dart';

class AnimationPage extends GetView<AnimationsController> {
  const AnimationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Animation Page"),
        ),
        body: Column(
          children: [
            Obx(() => AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  width: controller.containerWidth.value,
                  height: controller.containerHeight.value,
                  color: Colors.blue,
                )),
          ],
        ));
  }
}
