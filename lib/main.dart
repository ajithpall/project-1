import 'package:flutter/material.dart';
import 'package:drone_sale/search.dart';
import 'package:drone_sale/slider.dart';

void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
   return  const MaterialApp(
     home:  AppOne(),
   );
  }
}

class AppOne extends StatelessWidget {
  const AppOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Webapp_drone'),
          backgroundColor: const Color(0xFFFFD700),
          actions: [
            const SizedBox (width :25),
            IconButton(
              icon : const Icon(Icons.search),//search bar
              onPressed: (){
                showSearchDialog(context);
              },
            ),
            const SizedBox (width :25),
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                // need to text code here
              },
            ),
            const SizedBox (width :25),
            IconButton(
                icon: const Icon(Icons.manage_accounts_rounded),
            onPressed: (){
            },
            ),

          ],//actions
        ),
        body: Stack(
          children: [
         Container(
           height: double.infinity,
           width: double.infinity,
           decoration: const BoxDecoration(
             gradient: LinearGradient(
               colors: [
                 Color(0xFF615959), // Dark Red
                 Color(0xFF333333), // Mild Red
               ],
               begin: Alignment.topLeft,
               end: Alignment.bottomRight,
             ),
           ),
        ),
    Column(
    children:[
      const AdvertisementWidget(),

    Expanded(
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/images/one.jpeg', width: 100, height: 100),
          Image.asset('assets/images/second.jpeg', width: 100, height: 100),
          Image.asset('assets/images/three.jpeg', width: 100, height: 100),
        ],
                    ),
                    ),

                    ],
    ),
             ],
    ),
    ),
    );
  }
}


