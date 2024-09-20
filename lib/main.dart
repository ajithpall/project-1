import 'package:flutter/material.dart';
import 'package:drone_sale/search.dart';
import 'package:drone_sale/slider.dart';
import 'package:drone_sale/product_grid.dart';
import 'package:drone_sale/bar_text.dart';

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
  final GlobalKey _contactUsKey = GlobalKey();

  void _scrollToContactUs() {
    final context = _contactUsKey.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(seconds: 2),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 50,
              width: 50,
            ),
            const SizedBox(width: 10),
          ],
        ),
        flexibleSpace: Container(
          padding: EdgeInsets.fromLTRB(0, 20, 300, 0),
          child: FlexibleSpaceContent(),
        ),
        elevation: 10,
        backgroundColor: Colors.blueAccent,
        actions: [
          // ElevatedButton for Login
          ElevatedButton(
            onPressed: () {
              // Navigate to login screen or perform login action
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.greenAccent, // Text color
            ),
            child: Text('Login/Signup'),
          ),
          const SizedBox(width: 10),
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
                  key: _contactUsKey,
                  // Key for scrolling to this section
                  width: double.infinity,
                  height: 400,
                  color: Colors.white,
                  padding: const EdgeInsets.all(20),
                  child: Stack(
                    children: [
                      const Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'ABOUT US',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                          ], //children
                        ),
                      ),
                      const Positioned(
                        left: 20,
                        top: 40,
                        child: Text(
                          'We provide service like ',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Positioned(
                        left: 900,
                        bottom: 300,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/phone.png',
                              width: 30,
                              height: 30,
                              errorBuilder: (context, error, stackTrace) {
                                return const Icon(Icons.error);
                              },
                            ),
                            Text(
                              'Your Text Here',
                              style: TextStyle(
                                color: Colors.black,
                                // Customize your text style
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 900,
                        bottom: 50,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/gmail.png',
                              width: 30,
                              height: 30,
                              errorBuilder: (context, error, stackTrace) {
                                return const Icon(Icons.error);
                              },
                            ),
                            Text(
                              'Your Text Here',
                              style: TextStyle(
                                color: Colors.black,
                                // Customize your text style
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 900,
                        bottom: 200,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/insta.jpeg',
                              width: 10,
                              height: 30,
                              errorBuilder: (context, error, stackTrace) {
                                return const Icon(Icons.error);
                              },
                            ),
                            Text(
                              'name of id',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
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
          ),
        ],
      ),
    );
  }
}
