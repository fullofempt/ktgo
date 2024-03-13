import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;

class NetworkServices extends GetxService {
  Dio httpClient = Dio(BaseOptions(baseUrl: 'https://fakestoreapi.com'));
  // 

  Future<Response> get(String url) async {
    var response = await httpClient.get(url);
    return response;
  }

  Future<void> post(String url) async {}

}
