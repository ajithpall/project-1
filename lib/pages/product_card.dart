import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset('assets/images/drone.png'), // Replace with actual image
          Text('Drone Name'),
          Text('\$999'),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/product/1'); // Pass product ID
            },
            child: Text('View Details'),
          ),
        ],
      ),
    );
  }
}
