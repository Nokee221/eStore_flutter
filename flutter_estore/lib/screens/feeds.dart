import 'package:flutter/material.dart';
import 'package:flutter_estore/widget/feeds_products.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 200 / 300,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        children: List.generate(10, (index) {
          return FeedProducts();
        }),
      ),
    );
  }
}
