import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drone Store'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of items per row
            crossAxisSpacing: 10.0, // Spacing between items horizontally
            mainAxisSpacing: 10.0, // Spacing between items vertically
            childAspectRatio: 0.75, // Aspect ratio of the items
          ),
          itemCount: sampleProducts.length,
          itemBuilder: (context, index) {
            return ProductCard(product: sampleProducts[index]);
          },
        ),
      ),
    );
  }
}
