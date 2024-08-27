import 'package:flutter/material.dart';

class ProductGrid extends StatelessWidget {
  final List<Product> products = [
    Product('Product 1', '', 1000, 900),//the number is price of the product
    Product('Product 2', '', 2000, 1800),//add photo inside the quotes
    Product('product 3', '',399,7874),
    Product('product 4','',37,738),
    Product('Product 5', '', 1000, 900),
    Product('Product 6', '', 2000, 1800),
    Product('Product 7', '', 1000, 900),
    Product('Product 8', '', 2000, 1800),
    // Add more products here
  ];

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      padding: const EdgeInsets.all(10.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4, // Number of columns
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 4/2, // Width to height ratio of each item
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ProductCard(product: products[index]);
      },
    );
  }
}

class Product {
  final String name;
  final String imageUrl;
  final double oldPrice;
  final double newPrice;

  Product(this.name, this.imageUrl, this.oldPrice, this.newPrice);
}

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: const  TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              const   SizedBox(height: 4.0),
                Text(
                  '₹${product.oldPrice}',
                  style: const TextStyle(
                    decoration: TextDecoration.lineThrough,
                    color: Colors.red,
                    fontSize: 14.0,
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  '₹${product.newPrice}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}