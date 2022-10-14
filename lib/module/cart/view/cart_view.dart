import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cart View'),
      ),
      body: Center(
        child: Lottie.asset('asset/lottie/cart.json', height: 300),
      ),
    );
  }
}
