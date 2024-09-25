import 'package:flutter/material.dart';
import 'package:drone_sale/drones_page.dart';
import 'package:drone_sale/main.dart';

class FlexibleSpaceContent extends StatelessWidget {
  const FlexibleSpaceContent({Key? key}) : super(key: key);

  void CallUs() {
    AppOne calls = AppOne();
    calls.callUs();
    print(' CallUs works ');
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: InkWell(
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
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Container(
            // Services PopupMenuButton
            child: PopupMenuButton<String>(
              onSelected: (value) {
                print('Selected: $value');
                // Perform actions based on selection
              },
              itemBuilder: (BuildContext context) {
                return const <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    value: 'Service 1',
                    child: Text('Maintenance'),
                  ),
                  PopupMenuItem<String>(
                    value: 'Cable Management',
                    child: Text('Wiring work'),
                  ),
                  PopupMenuItem<String>(
                    value: 'Calibration',
                    child: Text('Calibration'),
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
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Container(
            // Contact Us Button
            child: TextButton(
              onPressed: () {
                // Call the scroll function
                CallUs(); //calling the class
              },
              child: const Text(
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
    );
  }
}
