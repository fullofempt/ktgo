// import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:ktgo/app/data/model/product.dart';
import 'package:ktgo/app/data/product_repository/product_response.dart';
import 'package:ktgo/app/services/network_services.dart';

class ProductRepository {
  final NetworkServices service = Get.find<NetworkServices>();

  ProductRepository();

  Future<List<Product>> getAll() async { //запрос на /products
    var response = await service.get('');
    var productResp = ProductResponse.fromJson(response.data); //лист
    var list = productResp.products;
    return list;
  }

  Future<Product> getById(int id) async { //по айди
    var response = await service.get('/$id');
    var product = Product.fromJson(response.data);
    return product;
  }
}