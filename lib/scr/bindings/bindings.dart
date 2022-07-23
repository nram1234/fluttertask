
import 'package:get/get.dart';

import '../controller/details_controller.dart';
import '../controller/home_controller.dart';

class AllBindings extends Bindings {
  @override
  void dependencies() async {
    Get.put<HomeController>(HomeController());
    Get.lazyPut(() => DetailsController());
    Get.lazyPut(() => DetailsController());
  }
}

