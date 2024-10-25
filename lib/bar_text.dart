import 'package:flutter/material.dart';
import 'package:DroneDoc/partpage.dart';

class FlexibleSpaceContent extends StatelessWidget {
  final VoidCallback onContactUsPressed; // Callback for Contact Us button
  const FlexibleSpaceContent({Key? key, required this.onContactUsPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final bar = IconButton(
      icon: const Icon(Icons.more_vert),
      onPressed: () {
        Container (
          width: screenWidth /2 ,
          height: screenWidth / 2 ,
          color: Colors.white,
          child:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DroneParts()),
                );
              },
              child: const Text(
                'DRONES',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              // Services PopupMenuButton
              child: PopupMenuButton<String>(
                onSelected: (value) {
                  print('>: $value');
                  // Perform actions based on selection
                },
                itemBuilder: (BuildContext context) {
                  return const <PopupMenuEntry<String>>[
                    PopupMenuItem<String>(
                      value: '>',
                      child: Text('> MAINTENANCE'),
                    ),
                    PopupMenuItem<String>(
                      value: '>',
                      child: Text('> WIRING WORK'),
                    ),
                    PopupMenuItem<String>(
                      value: '>',
                      child: Text('> CALIBRATION'),
                    ),
                  ];
                },
                child: const Text(
                  'SERVICES',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
              // 3D Parts InkWell
               InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DroneParts()),
                  );
                },
                child: const Text(
                  '3D PARTS',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),

            TextButton(
              onPressed: onContactUsPressed,
              child: const Text(
                'CONTACT US',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ],
        ),
        );
      },
    );
    final row = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/logo.png',
          height: 50,
          width: 50,
        ),
        const SizedBox(width: 0),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DroneParts()),
            );
          },
          child: const Text(
            'DRONES',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Container(
          // Services PopupMenuButton
          child: PopupMenuButton<String>(
            onSelected: (value) {
              print('>: $value');
              // Perform actions based on selection
            },
            itemBuilder: (BuildContext context) {
              return const <PopupMenuEntry<String>>[
                PopupMenuItem<String>(
                  value: '>',
                  child: Text('> MAINTENANCE'),
                ),
                PopupMenuItem<String>(
                  value: '>',
                  child: Text('> WIRING WORK'),
                ),
                PopupMenuItem<String>(
                  value: '>',
                  child: Text('> CALIBRATION'),
                ),
              ];
            },
            child: const Text(
              'SERVICES',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
        Container(
          // 3D Parts InkWell
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DroneParts()),
              );
            },
            child: const Text(
              '3D PARTS',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
        TextButton(
          onPressed: onContactUsPressed,
          child: const Text(
            'CONTACT US',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ],
    );
    return screenWidth > 800 ? row : bar;
  }
}
