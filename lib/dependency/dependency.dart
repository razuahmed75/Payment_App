import 'package:payment_app/controller/data_controller.dart';
import 'package:get/get.dart';

class InitDep implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DataController());
  }
}
