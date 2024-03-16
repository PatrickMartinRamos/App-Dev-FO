import 'package:flutter/material.dart';

class profilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'), // Set app bar title to "Main Page"
      ),
      body: const Center(
        child: Text('Welcome to the Profile Page!'),
      ),
    );
  }
}
