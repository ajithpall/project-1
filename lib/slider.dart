import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class AdvertisementWidget extends StatelessWidget {
  const AdvertisementWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'assets/images/background.png',
      'assets/images/background.png',
      'assets/images/background.png',
    ];

    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: imgList.length,
          itemBuilder: (context, index, realIndex) {
            return Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(
                  imgList[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
          options: CarouselOptions(
            height: 500.0,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            enlargeCenterPage: true,
            aspectRatio: 16/9,
            viewportFraction: 0.8,
          ),
        ),
        Positioned(
          left: 0,
          top: 0,
          bottom: 0,
          child: IconButton(
            icon: const Icon(Icons.arrow_left, color: Colors.white),
            onPressed: () {
              // Add functionality to navigate to the previous image
            },
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          bottom: 0,
          child: IconButton(
            icon: const Icon(Icons.arrow_right, color: Colors.white),
            onPressed: () {
              // Add functionality to navigate to the next image
            },
          ),
        ),
      ],
    );
  }
}
