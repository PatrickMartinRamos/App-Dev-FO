import 'package:flutter/material.dart';

class pokeDopt extends StatelessWidget {
  const pokeDopt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('pokeDopt Page'), // Set app bar title to "Main Page"
      ),
      body: const Center(
        child: Text('Welcome to the pokeDopt Page!'),
      ),
    );
  }
}
