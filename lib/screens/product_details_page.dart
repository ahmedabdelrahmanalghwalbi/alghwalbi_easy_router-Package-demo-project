import 'package:alghwalbi_easy_router/alghwalbi_easy_router.dart';
import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  final String productId;
  const ProductDetailsPage({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => EasyRouter.back(context),
            icon: const Icon(Icons.arrow_back)),
        title: const Text("Product Details Page"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Product Detais"),
          const SizedBox(height: 16),
          Text("This is Product Id :-  $productId"),
          const SizedBox(height: 16),
          ElevatedButton(
              onPressed: () => EasyRouter.back(context),
              child: const Text("Back To Products Page"))
        ],
      )),
    );
  }
}
