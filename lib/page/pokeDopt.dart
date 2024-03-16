import 'package:flutter/material.dart';

class pokeDopt extends StatelessWidget {
  const pokeDopt({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('pokeDopt Home Page'),
      ),
      body: const Center(
        child: Text('Welcome to the pokeDopt Page!'),
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
            // Handle profile icon tap
              Navigator.pushNamed(context, '/profile');
              break;
            case 1: Navigator.pushNamed(context, '/PokeHome');
            // Handle pokehome icon tap
              break;
            case 2:
              Navigator.pushNamed(context, '/PokeList');
            // Handle pokelist icon tap
              break;
          }
        },
      ),
    );
  }
}
