import 'package:get/get.dart';
import 'package:ktgo/app/data/product_repository/product_response.dart';
import 'package:ktgo/app/data/repository/product_repository.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(
      HomeController(ProductRepository()),
    );
  }
}
