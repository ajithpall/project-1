import 'package:flutter/material.dart';
void showSearchDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Search'),
        content: const TextField(
          decoration:  InputDecoration(
            hintText: 'Enter search term',
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              // Perform search action here
              Navigator.of(context).pop();
            },
            child: const Text('Search'),
          ),
        ],
      );
    },
  );
}
