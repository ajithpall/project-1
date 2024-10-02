import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  void showLoginDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Login'),
          content: SizedBox(
            height: 200,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: Icon(Icons.mail),
                  title: const Text('Login with Email'),
                  onTap: () {
                    // Handle email login
                    Navigator.of(context).pop();
                    showEmailLoginForm(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.facebook),
                  title: const Text('Login with Facebook'),
                  onTap: () {
                    // Handle Facebook login
                    Navigator.of(context).pop();
                    // Implement Facebook login logic here
                  },
                ),
                ListTile(
                  leading: Icon(Icons.golf_course),
                  title: const Text('Login with Google'),
                  onTap: () {
                    // Handle Google login
                    Navigator.of(context).pop();
                    // Implement Google login logic here
                  },
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  void showEmailLoginForm(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final emailController = TextEditingController();
        final passwordController = TextEditingController();

        return AlertDialog(
          title: const Text('Email Login'),
          content: SizedBox(
            height: 150,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(labelText: 'Email ID'),
                ),
                TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(labelText: 'Password'),
                  obscureText: true,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Handle login with email and password
                final email = emailController.text;
                final password = passwordController.text;
                // Implement your login logic here

                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('Login'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
