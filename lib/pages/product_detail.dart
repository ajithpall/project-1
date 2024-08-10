import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drone Detail'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/drone.png'), // Replace with actual image
            Text('Drone Name'),
            Text('Detailed description of the drone.'),
            Text('\$999'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cart');
              },
              child: Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
