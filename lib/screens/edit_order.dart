import 'package:alghwalbi_easy_router/alghwalbi_easy_router.dart';
import 'package:flutter/material.dart';

class EditOrder extends StatelessWidget {
  final String orderId;
  const EditOrder({super.key, required this.orderId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => EasyRouter.back(context),
            icon: const Icon(Icons.arrow_back)),
        title: const Text("Edit Order Page"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Edit Order with Id :-  $orderId"),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () => EasyRouter.back(context),
              child: Text("Back To Order $orderId Details Page"))
        ],
      )),
    );
  }
}
