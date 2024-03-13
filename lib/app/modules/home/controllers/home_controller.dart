// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get.dart';
import 'package:ktgo/app/data/model/product.dart';
import 'package:ktgo/app/data/repository/product_repository.dart';

class HomeController extends GetxController {
  ProductRepository productRepository;

  HomeController(this.productRepository);

  RxList<Product> products = <Product>[].obs;

  void getProducts() async {
    products.value = await productRepository.getAll();
  }
}