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

class AppOne extends StatefulWidget {
  const AppOne({super.key});

  @override
  _AppOneState createState() => _AppOneState();
}

class _AppOneState extends State<AppOne> {
  final ScrollController _scrollController = ScrollController();

  void _scrollToContactUs() {
    // Scroll to the bottom (Contact Us section)
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(seconds: 2),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 50,
              width: 50,
            ),
            const SizedBox(width: 10),
          ],
        ),
        flexibleSpace: const Stack(
          children: [
            Positioned(
              left: 100,
              bottom: 7,
              child: Text('DRONES',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ),
            Positioned(
              left: 190,
              bottom: 6,
              child: Text('SERVICES',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ),
            Positioned(
              left: 290,
              bottom: 6,
              child: Text('MAINTENANCE',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ),
            Positioned(
              left: 430,
              bottom: 6,
              child: Text('3D PARTS',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ),
            Positioned(
              left: 530,
              bottom: 6,
              child: Text('CONTACT US',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ),
          ],
        ),
        backgroundColor: Colors.blueGrey,
        actions: [
          const SizedBox(width: 25),
          IconButton(
            icon: const Icon(Icons.search),
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
          const SizedBox(width: 25),
          IconButton(
            icon: const Icon(Icons.contact_page),
            onPressed: _scrollToContactUs, // Scroll to "Contact Us"
          ),
        ],
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
            controller: _scrollController, // Attach the ScrollController
            child: Column(
              children: [
                const SizedBox(height: 20),
                const AdvertisementWidget(), // Your advertisement banner
                const SizedBox(height: 80), //starting of after the banner
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.8,
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
                          children: const [
                            Text(
                              'ABOUT US',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                      const Positioned(
                        left: 20,
                        bottom: 20,
                        child: Text(
                          'We provide service like..',
                          style: TextStyle(fontSize: 16),
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
                            return const Icon(Icons.error);
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
                            return const Icon(Icons.error);
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
                            return const Icon(Icons.error);
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
