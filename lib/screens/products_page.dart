import 'package:alghwalbi_easy_router/alghwalbi_easy_router.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products Page"),
        leading: IconButton(
            onPressed: () => EasyRouter.back(context),
            icon: const Icon(Icons.arrow_back)),
        actions: [
          IconButton(
              tooltip: "Go To Your Orders",
              onPressed: () {
                EasyRouter.go(
                  context: context,
                  route: '/orders',
                );
              },
              icon: const Icon(Icons.shopping_cart_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 16,
            ),
            ...List.generate(
                30,
                (index) => ListTile(
                      title: Text("Product With Id # ${index.toString()}"),
                      onTap: () {
                        //NAVIGATE TO PRODUCT DETAILS PAGE WITH THE PRODUCT ID
                        EasyRouter.go(
                          context: context,
                          route: '/products/${index.toString()}', // PRODUCT ID
                          data: {'productId': index.toString()},
                        );
                      },
                    ))
          ],
        ),
      ),
    );
  }
}
