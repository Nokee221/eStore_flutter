import 'package:flutter/material.dart';
import 'package:flutter_estore/screens/cart_empty.dart';

class CartPage extends StatelessWidget {
  const CartPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CartEmpty(),
    );
  }
}