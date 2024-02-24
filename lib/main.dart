import 'package:alghwalbi_easy_router/alghwalbi_easy_router.dart';
import 'package:flutter/material.dart';
import 'package:test/screens/login_page.dart';
import 'package:test/screens/main_page.dart';
import 'package:test/screens/order_details.dart';
import 'package:test/screens/edit_order.dart';
import 'package:test/screens/orders_page.dart';
import 'package:test/screens/product_details_page.dart';
import 'package:test/screens/products_page.dart';
import 'package:test/screens/signup_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  EasyRouter.removeHashFromUrl();
  EasyRouter.allAppRoutes = {
    '/': (context, state, data) {
      return EasyRouter.routeInfo(
          child: const MainPage(),
          title: 'Main Page',
          key: const ValueKey('Easy Route main'));
    },
    '/login': (context, state, data) => EasyRouter.routeInfo(
          child: const LoginPage(),
          title: 'Login Page',
          key: const ValueKey('Easy Route Login'),
        ),
    '/signup': (context, state, data) => EasyRouter.routeInfo(
          child: const SignUpPage(),
          title: 'Signup Page',
          key: const ValueKey('Easy Route Signup'),
        ),
    '/products': (context, state, data) => EasyRouter.routeInfo(
          child: const ProductsPage(),
          title: 'Products Page',
          key: const ValueKey('Easy Route Products'),
        ),
    '/products/:id': (context, state, data) {
      var productId = state.pathParameters[
          'id']; // THIS IS DATA FROM QUERY PARAMETER (FLUTTER WEB CASE)
      return EasyRouter.routeInfo(
        child: ProductDetailsPage(
          productId: productId ?? (data as Map<String, dynamic>)['productId'],
        ),
        title: 'Product Details Page',
        key: const ValueKey('Easy Route Product Details'),
      );
    },
    '/orders': (context, state, data) {
      return EasyRouter.routeInfo(
          child: const OrdersPage(),
          title: 'Orders Page',
          key: const ValueKey('Easy Route Orders'));
    },
    '/orders/:id': (context, state, data) {
      var orderId = state.pathParameters[
          'id']; // THIS IS DATA FROM QUERY PARAMETER (FLUTTER WEB CASE)
      return EasyRouter.routeInfo(
          child: OrderDetails(
            orderId: orderId ?? (data as Map<String, dynamic>)['orderId'],
          ),
          title: 'Order Details Page',
          key: const ValueKey('Easy Route Order Details'));
    },
    '/orders/:id/edit': (context, state, data) {
      var orderId = state.pathParameters['id'];
      return EasyRouter.routeInfo(
        child: EditOrder(
          orderId: orderId ?? (data as Map<String, dynamic>)['orderId'],
        ),
        title: 'Edit Order Page',
        key: const ValueKey('Easy Route Edit Order'),
      );
    },
  };
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: EasyRouter.easyRouterDelegate,
      routeInformationParser: EasyRouter.getEasyRouterParser,
      backButtonDispatcher: EasyRouter.getEasyRouterBackButtonDispatcher,
      debugShowCheckedModeBanner: false,
      title: '(alghwalbi_easy_router) Package Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.deepPurple,
            centerTitle: true,
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 22),
            actionsIconTheme: IconThemeData(color: Colors.white),
            elevation: 5,
            iconTheme: IconThemeData(color: Colors.white)),
        useMaterial3: true,
      ),
    );
  }
}
