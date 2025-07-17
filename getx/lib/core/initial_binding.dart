import 'package:get/get.dart';
import 'package:getx/services/shared_pref.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    // SharedPref servisini uygulama başlamadan önce kaydediyoruz.
    Get.putAsync(() async {
      final sharedPref = SharedPref();
      await sharedPref.init();
      return sharedPref;
    });

    Get.offAllNamed('/home');
  }
}
