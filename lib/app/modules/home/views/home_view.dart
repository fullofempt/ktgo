import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ktgo/app/modules/home/controllers/home_controller.dart';


class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeView'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () => controller.getProducts(),
                  child: Text("Get "),
                ),
                Obx(() => ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.products.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final product = controller.products[index];
                        return ListTile(
                          title: Text(product.title),
                          subtitle: Text("\$ ${product.price}, ${product.description}"),
                          // leading: Image.network(
                          //   product.description,
                          //   height: 40,
                          //   width: 40,
                          // ),
                        );
                      },
                    )),
              ],
            ),
          ),
        ));
  }
}