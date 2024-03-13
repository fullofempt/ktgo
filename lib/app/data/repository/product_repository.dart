// import 'package:dio/dio.dart';
import 'dart:convert';

import 'package:get/get.dart';
import 'package:ktgo/app/data/model/product.dart';
// import 'package:ktgo/app/data/product_repository/product_response.dart';
import 'package:ktgo/app/services/network_services.dart';

class ProductRepository {
  final NetworkServices service = Get.find<NetworkServices>();

  ProductRepository();

  Future<List<Product>> getAll() async {
    var response = await service.get('products');
    List<dynamic> jsonData = response.data;
    List<Product> productList = jsonData.map((json) => Product.fromJson(json)).toList();
    return productList;
  }

  Future<Product> getById(int id) async {
    var response = await service.get('$id');
    var product = Product.fromJson(response.data);
    return product;
  }
}
