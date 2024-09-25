import 'package:flutter/material.dart';
import 'package:drone_sale/search.dart';
import 'package:drone_sale/slider.dart';
import 'package:drone_sale/product_grid.dart';
import 'package:drone_sale/bar_text.dart';
import 'package:drone_sale/about_page.dart';

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

  //return type _AppOneState   cretatestate is method to create a state return _AppOneState
  void callUs() {
    _AppOneState().scrollToContactUs(); // Publicly accessible
  }
}

class _AppOneState extends State<AppOne> {
  final ScrollController _scrollController = ScrollController();

  // final class name  instance name  = class name () ;
  final GlobalKey _contactUsKey = GlobalKey();

  //golbalkey is class that create ah instance name of _contactkey that return value of globalkey
  //ScrollController get contactus => _scrollController;
  //return type get get_name ger_return _scrollcontroller
  void scrollToContactUs() {
    final context = _contactUsKey.currentContext;
    //context value is get form global key instance and set the current value of context
    if (context != null) {
      //if the context is null make a error so tell the compailer not null value
      Scrollable.ensureVisible(
        //class for scrolling method is ensurevisible tells this function are in the class
        context,
        // context tells widget position
        duration: const Duration(seconds: 2),
        // duration class
        curve: Curves.easeInOut,
        // make a good transition animation of staring and ending scroll
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
            const SizedBox(width: 0),
          ],
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueAccent, Colors.lightBlueAccent], // Gradient colors
              begin: Alignment.topRight, // Gradient start position
              end: Alignment.bottomRight, // Gradient end position
            ),
          ),
          padding: const EdgeInsets.fromLTRB(0, 20, 500,0 ),
          child: const FlexibleSpaceContent(),
        ),
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
            child: const Text('Login/Signup'),
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
                  height: MediaQuery.of(context).size.height *
                      0.8, //responsive gride transform its size
                  child: ProductGrid(), // Your product grid
                ),
                const SizedBox(height: 300),
                // about us page
                Container(
                  key: _contactUsKey,
                  // when click the contact text , this key give help to navigate to this contanier
                  // Key for scrolling to this section
                  child: const Aboutpage(), // Aboutpage class
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
