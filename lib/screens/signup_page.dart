import 'package:alghwalbi_easy_router/alghwalbi_easy_router.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox.shrink(),
        title: const Text("Sign up Page"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Sign up Page"),
          const SizedBox(height: 16),
          const Text("After Sign Up , Press Button To Go To Login Page"),
          const SizedBox(height: 16),
          ElevatedButton(
              onPressed: () {
                EasyRouter.go(
                  context: context,
                  route: '/login',
                );
              },
              child: const Text("GO To Login Page"))
        ],
      )),
    );
  }
}
