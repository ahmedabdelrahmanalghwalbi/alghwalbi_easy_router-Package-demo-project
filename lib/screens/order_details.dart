import 'package:alghwalbi_easy_router/alghwalbi_easy_router.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatelessWidget {
  final String orderId;
  const OrderDetails({super.key, required this.orderId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => EasyRouter.back(context),
            icon: const Icon(Icons.arrow_back)),
        title: const Text("Order Details Page"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("This is Product Id :-  $orderId"),
          const SizedBox(height: 16),
          ElevatedButton(
              onPressed: () => EasyRouter.go(
                  context: context,
                  route: '/orders/$orderId/edit',
                  data: {'orderId': orderId}),
              child: const Text("Edit Order")),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () => EasyRouter.back(context),
              child: const Text("Back To Orders Page"))
        ],
      )),
    );
  }
}
