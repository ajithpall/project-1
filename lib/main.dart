import 'package:flutter/material.dart';
import 'package:drone_sale/search.dart';
import 'package:drone_sale/slider.dart';
import 'package:drone_sale/product_grid.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AppOne(),
    );
  }
}

class AppOne extends StatelessWidget {
  const AppOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/images/logo.png',
              // Make sure to include the file extension
              height: 50,
              width: 50, // Adjust the height as needed
            ),
            const SizedBox(width: 10), // Space between logo and text
          ],
        ),
        flexibleSpace: const Stack(
          children: [
            Positioned(
              left: 100,
              bottom: 7,
              child: Text('Drones', style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18)),
            ),
            Positioned(
              left: 190,
              bottom: 6,
              child: Text('Services', style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18)),
            ),
            Positioned(
              left: 290,
              bottom: 6,
              child: Text('Maintenance', style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18)),
            ),
            Positioned(
              left: 430,
              bottom: 6,
              child: Text('3D Parts', style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18)),
            ),
            Positioned(
              left: 530,
              bottom: 6,
              child: Text('Contact Us', style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18)),
            ), //this code with some bug
            /*  SizedBox(width:100),
            Text('Drones', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
            SizedBox(width: 20),
            Text('Services', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize:18)),
            SizedBox(width: 20),
            Text('Maintenance', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize:18)),
            SizedBox(width: 20),
            Text('3D Parts', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize:18)),
            SizedBox(width: 20),
            Text('Contact Us', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize:18)),
            */ //not working code so i drop it
          ], //children
        ),
        backgroundColor: Colors.blueGrey,
        //backgroundColor: const Color(0xFFFFD700),
        actions: [
          const SizedBox(width: 25),
          IconButton(
            icon: const Icon(Icons.search), // Search icon
            onPressed: () {
              showSearchDialog(context);
            },
          ),
          const SizedBox(width: 25),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              // Add functionality here
            },
          ),
          const SizedBox(width: 25),
          IconButton(
            icon: const Icon(Icons.manage_accounts_rounded),
            onPressed: () {
              // Add functionality here
            },
          ),
        ], // actions
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                const AdvertisementWidget(), // Your advertisement banner
                const SizedBox(height: 80), //starting of after the banner
                SizedBox(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.8, // Adjust the height as needed
                  child: ProductGrid(), // Your product grid
                ),
                const SizedBox(height: 300),
                Container(
                  width: double.infinity,
                  height: 400,
                  color: Colors.lightBlueAccent,
                  padding: const EdgeInsets.all(20),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'About Us',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Positioned(
                              left:20,
                            bottom:20,
                            child:
                               Text(
                              'We provide service like..',
                              style: TextStyle(fontSize: 16),
                            ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 100,
                        child: Image.asset(
                          '',
                          width: 100,
                          height: 100,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(Icons
                                .error); // Placeholder if the image fails to load
                          },
                        ),
                      ),
                      Positioned(
                        right: 20,
                        top: 100,
                        child: Image.asset(
                          '',
                          width: 100,
                          height: 100,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(Icons
                                .error); // Placeholder if the image fails to load
                          },
                        ),
                      ),
                      Positioned(
                        left: 150,
                        bottom: 20,
                        child: Image.asset(
                          '',
                          width: 100,
                          height: 100,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(Icons
                                .error); // Placeholder if the image fails to load
                          },
                        ),
                      ),
                    ],
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
