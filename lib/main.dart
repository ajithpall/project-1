import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

//import 'package:DroneDoc/partpage.dart';
import 'package:DroneDoc/about_page.dart';
import 'package:DroneDoc/bar_text.dart';

//import 'package:DroneDoc/EmailSender.dart';
import 'package:DroneDoc/login_page.dart';
import 'package:DroneDoc/product_grid.dart';
import 'package:DroneDoc/Profile page.dart';
import 'package:DroneDoc/search.dart';
import 'package:DroneDoc/slider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyD9yryK5ye3sGlpdb8K5XMIqx4mhneNoZs",
      projectId: "dronedoc-122002",
      messagingSenderId: "79610299425",
      appId: "1:79610299425:web:44fd278b909d1175518f60",
    ),
  );
  runApp(const MyApp());
}

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
  State<AppOne> createState() => _AppOneState();
//return type _AppOneState   cretatestate is method to create a state return _AppOneState
}

class _AppOneState extends State<AppOne> {
  final ScrollController _scrollController = ScrollController();

  // final class name  instance name  = class name () ;
  final GlobalKey _contactUsKey = GlobalKey();

  //golbalkey is class that create ah instance name of _contactkey that return value of globalkey
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

  LoginPage loginpage = const LoginPage(); //loginpage instance loginpage

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.blueAccent, Colors.lightBlueAccent],
              // Gradient colors
              begin: Alignment.topRight,
              // Gradient start position
              end: Alignment.bottomRight, // Gradient end position
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.lightBlue.withOpacity(0.9),
                offset: const Offset(0, 5),
                blurRadius: 9,
              ),
            ],
          ),
          padding: const EdgeInsets.fromLTRB(0, 25, 500, 0),
          child: FlexibleSpaceContent(
            onContactUsPressed: scrollToContactUs,
          ),
        ),
        actions: [
          // ElevatedButton for Login
          ElevatedButton(
            onPressed: () {
              loginpage.showLoginDialog(context);
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfilePage(
                    email: 'defult',
                    loginDate: 'defult',
                    phoneNumber: 'defult',
                    profileImageUrl: 'defult ',
                    userName: 'defult',
                  ),
                ),
              );
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
                image: AssetImage("assets/images/backgroundtwo.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            controller: _scrollController, // Attach the ScrollController
            child: Column(
              children: [
                const SizedBox(height: 20),
                AdvertisementWidget(), // Your advertisement banner
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
