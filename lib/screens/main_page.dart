import 'package:alghwalbi_easy_router/alghwalbi_easy_router.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox.shrink(),
        title: const Text("Main Page"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("HELLO, alghwalbi_easy_router DEMO ,,, "),
          const SizedBox(height: 40),
          const Text("Press Button To Sign Up (Or) Login"),
          const SizedBox(height: 50),
          ElevatedButton(
              onPressed: () => EasyRouter.go(
                  context: context, route: '/signup', replaceRoute: true),
              child: const Text("Sign up (or) Login"))
        ],
      )),
    );
  }
}
