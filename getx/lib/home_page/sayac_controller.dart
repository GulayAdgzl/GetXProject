import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SayacController extends GetxController {
  // Define your controller properties and methods here
  var count = 0;

  void increment() {
    count++;
    update();
  }
}
