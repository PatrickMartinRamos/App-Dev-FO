import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'), // Set app bar title to "Main Page"
      ),
      body: Center(
        child: Text('Welcome to the Main Page!'), // Add main page content here
      ),
    );
  }
}
