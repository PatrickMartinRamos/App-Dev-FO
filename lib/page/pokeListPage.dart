import 'package:flutter/material.dart';
class pokeListPage extends StatelessWidget {
  const pokeListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PokeList Page'), // Set app bar title to "Main Page"
      ),
      body: const Center(
        child: Text('Welcome to the PokeList Page!'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/pokedopt.ico')),
            label: 'PokeHome',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/pokepals.ico')),
            label: 'PokeList',
          ),
        ],
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/profile'); // Navigate to profile page
              break;
            case 1:
            //palitan naten to from going to pokeDopt page it will refresh the homepage or go the uppper screen
              Navigator.pushNamed(context, '/PokeHome');
              break;
            case 2:
              Navigator.pushNamed(context, '/PokeList'); //Navigate to cart page
              break;
          // You can add cases for other tabs if needed
          }
        },
      ),
    );
  }
}
