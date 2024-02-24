import 'package:alghwalbi_easy_router/alghwalbi_easy_router.dart';
import 'package:flutter/material.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => EasyRouter.back(context),
              icon: const Icon(Icons.arrow_back)),
          title: const Text("Orders Page"),
        ),
        body: Center(
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
              const Text("YOUR ORDERS !!!"),
              const SizedBox(height: 16),
              ...List.generate(
                  30,
                  (index) => ListTile(
                        title: Text("Order With Id # ${index.toString()}"),
                        onTap: () {
                          //NAVIGATE TO ORDER DETAILS PAGE WITH THE PRODUCT ID
                          EasyRouter.go(
                            context: context,
                            route: '/orders/${index.toString()}', // ORDER ID
                            data: {'ordedrId': index.toString()},
                          );
                        },
                      ))
            ]))));
  }
}
