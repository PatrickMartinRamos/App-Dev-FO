import 'package:flutter/material.dart';

class cartPage extends StatelessWidget {
  const cartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PokeList Page'), // Set app bar title to "Main Page"
      ),
      body: const Center(
        child: Text('Welcome to the PokeList Page!'),
      ),
    );
  }
}
