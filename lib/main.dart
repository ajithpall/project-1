import 'package:flutter/material.dart';
import 'package:drone_sale/search.dart';
import 'package:drone_sale/slider.dart';
import 'package:drone_sale/product_grid.dart';
import 'package:drone_sale/drones_page.dart';

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
          children: [
            Image.asset(
              'assets/images/logo two.png',
              height: 50,
              width: 50,
            ),
            const SizedBox(width: 10),
          ],
        ),
        flexibleSpace: Stack(
          children: [
            Positioned(
              left: 100,
              bottom: 8,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DroneParts()), // Navigate to DroneParts page
                  );
                },
                child: const Text(
                  'DRONES',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 220,
              bottom: 8,
              child: PopupMenuButton<String>(
                onSelected: (value) {
                  // Handle menu selection
                  print('>: $value');
                  // You can navigate to different pages or perform actions based on the selected value
                },
                itemBuilder: (BuildContext context) {
                  return <PopupMenuEntry<String>>[
                    const PopupMenuItem<String>(
                      value: 'Service 1',
                      child: Text('Maintenance'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'Cable Management',
                      child: Text('Service 2'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'Calibration',
                      child: Text('Service 3'),
                    ),
                  ];
                },
                child: const Text(
                  'SERVICES',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),

            Positioned(
              left: 325,
              bottom: 8,
              child: Text('MAINTENANCE',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ),
            Positioned(
              left: 470,
              bottom: 8,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DroneParts()), // Navigate to DroneParts page
                  );
                },
                child: const Text(
                  '3D PARTS',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 580,
              bottom: 7.5,
              child: TextButton(
                onPressed: _scrollToContactUs,
                child: Text(
                  'CONTACT US',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
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
                              width: 30,
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
