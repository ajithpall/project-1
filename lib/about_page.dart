import 'package:flutter/material.dart';

class Aboutpage extends StatelessWidget {
  const Aboutpage({super.key}); // unknown
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      decoration:const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.white], // Gradient colors
          begin: Alignment.topLeft, // Gradient start position
          end: Alignment.bottomRight, // Gradient end position
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
              ], //children
            ),
          ),
          Positioned(
            left: 20,
            top: 60,
            child: Container(
              height: 300,
              width: 600,
              decoration: BoxDecoration(
                color: Colors.white,
                // Box color
                borderRadius: BorderRadius.circular(12),
                // Optional rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Shadow color
                    offset: Offset(0, 4), // Shadow position
                    blurRadius: 6, // Softness of the shadow
                    spreadRadius: 2, // Spread of the shadow
                  ),
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    offset: Offset(4, 0),
                    blurRadius: 6,
                    spreadRadius: 2,
                  ),
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: Offset(-4, 0),
                    blurRadius: 6,
                    spreadRadius: 2,
                  ),
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    offset: Offset(0, -4),
                    blurRadius: 6,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0), // Add padding to the text
                child: Text(
                  'Welcome to DroneDoc, your go-to partner for all things drone-related.\n'
                  'We specialize in producing custom-designed 3D parts tailored to your specific needs,\n'
                  'whether it’s for drones or other technical projects. Our expertise extends beyond just '
                  'manufacturing—we offer comprehensive drone maintenance services, including wiring, '
                  'repairs, and precise calibration to ensure your drone operates at peak performance. '
                  'As a passionate startup based out of a home office, we pride ourselves '
                  'on providing high-quality solutions. Our team includes skilled professionals with over '
                  'two years of experience in the drone field, working tirelessly to deliver '
                  'exceptional service and innovation.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
          Positioned(
            left: 700,
            top : 60,
            child: Container(
              height: 300,
              width: 600,
              decoration: BoxDecoration(
                color: Colors.white,
                // Box color
                borderRadius: BorderRadius.circular(12),
                // Optional rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Shadow color
                    offset: Offset(0, 4), // Shadow position
                    blurRadius: 6, // Softness of the shadow
                    spreadRadius: 2, // Spread of the shadow
                  ),
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    offset: Offset(4, 0),
                    blurRadius: 6,
                    spreadRadius: 2,
                  ),
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: Offset(-4, 0),
                    blurRadius: 6,
                    spreadRadius: 2,
                  ),
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    offset: Offset(0, -4),
                    blurRadius: 6,
                    spreadRadius: 2,
                  ),
                ],
              ),
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
                const Text(
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
                const Text(
                  "mental",
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
                const Text(
                  'name of id',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ), //contianer
        ], //children
      ),
    );
  }
}
