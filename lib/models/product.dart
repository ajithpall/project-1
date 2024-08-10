// lib/models/product.dart

class Product {
  final int id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}

// Example products
List<Product> sampleProducts = [
  Product(
    id: 1,
    name: 'Drone X1',
    description: 'A high-performance drone with 4K camera.',
    price: 999.99,
    imageUrl: 'assets/images/drone_x1.png',
  ),
  Product(
    id: 2,
    name: 'Drone X2',
    description: 'An advanced drone with long battery life.',
    price: 1299.99,
    imageUrl: 'assets/images/drone_x2.png',
  ),
  // Add more products here
];
