import 'package:flutter/material.dart';
import 'home.dart';
import 'product_detail.dart';
import 'cart.dart';
import 'checkout.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void main() {
  setPathUrlStrategy(); // Use path URL strategy
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drone Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/product/:id': (context) => ProductDetailPage(),
        '/cart': (context) => CartPage(),
        '/checkout': (context) => CheckoutPage(),
      },
    );
  }
}
