import 'package:flutter/material.dart';

class Aboutpage extends StatelessWidget {
  const Aboutpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.white],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
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
              ],
            ),
          ),
          Positioned(
            left: 20,
            top: 60,
            child: Container(
              height: 300,
              width: 800,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    offset: const Offset(0, 4),
                    blurRadius: 6,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  '''  Welcome to DroneDoc, your go-to partner for all things drone-related. We specialize in producing custom-designed 3D parts tailored to your specific needs...''',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
          Positioned(
            left: 900,
            top: 60,
            child: Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    offset: const Offset(0, 4),
                    blurRadius: 6,
                    spreadRadius: 2,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 950,
            bottom: 50,
            child: Row(
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/contact logo.png',
                      width: 30,
                      height: 30,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.error);
                      },
                    ),
                    const SizedBox(height: 20,),
                    Image.asset(
                      'assets/images/gmail logo.png',
                      width: 30,
                      height: 30,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.error);
                      },
                    ),
                    const SizedBox(height: 20),
                    Image.asset(
                      'assets/images/instagram image.jpeg',
                      width: 30,
                      height: 30,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.error);
                      },
                    ),
                    const SizedBox(height: 20),
                    Image.asset(
                      'assets/images/linkedin image.png',
                      width: 30,
                      height: 30,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.error);
                      },
                    ),
                    const SizedBox(height: 20),
                    Image.asset(
                      'assets/images/whatsapp logo.jpeg',
                      width: 30,
                      height: 30,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.error);
                      },
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                const Column(
                  crossAxisAlignment : CrossAxisAlignment.start,
                  children: [
                     Text(
                      "8610803536",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "ajithpall03122002@gmail.com",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                     SizedBox(height: 20),
                     Text(
                      "@ajithpall",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                     SizedBox(height: 20),
                     Text(
                      "www.linkedIn.ajithpall",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                     SizedBox(height: 20),
                    Text(
                      "8610803536",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
