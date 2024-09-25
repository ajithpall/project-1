import 'package:flutter/material.dart';

class ProductGrid  extends StatelessWidget {
  final List<Product> products = [
    Product('Product 1', 'assets/images/coming soon.jpeg', 0,0),//the number is price of the product
    Product('Product 2', 'assets/images/coming soon.jpeg', 0, 0),//add photo inside the quotes
    Product('product 3', 'assets/images/coming soon.jpeg',0,0),
    Product('product 4','assets/images/coming soon.jpeg',0,0),
    Product('Product 5', 'assets/images/coming soon.jpeg', 0, 0),
    Product('Product 6', 'assets/images/coming soon.jpeg', 0, 0),
    Product('Product 7', 'assets/images/coming soon.jpeg', 0, 0),
    Product('Product 8', 'assets/images/coming soon.jpeg', 0, 0),
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
        childAspectRatio: 2/2, // Width to height ratio of each item
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