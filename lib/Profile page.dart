import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String userName;
  final String email;
  final String phoneNumber;
  final String loginDate;
  final String profileImageUrl;

  //variable declaration
  //const value pass to the super class
  const ProfilePage({
    Key? key,
    required this.userName,
    required this.email,
    required this.phoneNumber,
    required this.loginDate,
    required this.profileImageUrl,
  }) : super(key: key);

//
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;// store the size of widht to screenwidth variable
    double screenHeight = MediaQuery.of(context).size.height;// store the value of height size to screenHeight

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: screenHeight * 0.02,
          horizontal: screenWidth * 0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Picture
            CircleAvatar(
              radius: screenHeight * 0.1, // responsive image size
              backgroundImage: NetworkImage(profileImageUrl),
            ),
            SizedBox(height: screenHeight * 0.03),

            // User Name
            Text(
              userName,
              style: TextStyle(
                fontSize: screenWidth * 0.06, // responsive font size
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: screenHeight * 0.02),

            // Email
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email, size: screenWidth * 0.05),
                SizedBox(width: screenWidth * 0.02),
                Text(
                  email,
                  style: TextStyle(fontSize: screenWidth * 0.045),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.02),

            // Phone Number
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone, size: screenWidth * 0.05),
                SizedBox(width: screenWidth * 0.02),
                Text(
                  phoneNumber,
                  style: TextStyle(fontSize: screenWidth * 0.045),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.02),

            // Login Date
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.calendar_today, size: screenWidth * 0.05),
                SizedBox(width: screenWidth * 0.02),
                Text(
                  'Last Login: $loginDate',
                  style: TextStyle(fontSize: screenWidth * 0.045),
                ),
              ],
            ),

            SizedBox(height: screenHeight * 0.0
            ),

            // Edit Profile Button
            ElevatedButton(
              onPressed: () {
                // Add functionality for editing profile
              },
              child:  Text(
                'Edit Profile',
                style: TextStyle(fontSize: screenWidth * 0.04),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  vertical: screenHeight * 0.02,
                  horizontal: screenWidth * 0.2,
                ),
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ), //child
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: ProfileDemo(),
  ));
}

class ProfileDemo extends StatelessWidget {
  const ProfileDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ProfilePage(
      userName: "John Doe",
      email: "john.doe@example.com",
      phoneNumber: "+1234567890",
      loginDate: "2024-10-01",
      profileImageUrl:
          "https://via.placeholder.com/150", // Placeholder image URL
    );
  }
}
