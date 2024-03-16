import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 52), // Adjust the width
            ImageIcon(AssetImage('assets/pokedopt.ico')),
            SizedBox(width: 3),
            Text('PokeDopt'),
            SizedBox(width: 1),
          ],
        ),
        actions: const [
          SizedBox(width: 48),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      // Add your search functionality here
                    },
                    child: IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {
                        // Add your search functionality here
                      },
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Add your filter functionality here
                    },
                    child: IconButton(
                      icon: const Icon(Icons.filter_alt),
                      onPressed: () {
                        // Add your filter functionality here
                      },
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  // Add your notification functionality here
                },
                child: IconButton(
                  icon: const Icon(Icons.notifications),
                  onPressed: () {
                    // Add your notification functionality here
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Expanded(
            child: Center(
              child: Text('Welcome to PokeDopt!'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/pokedopt.ico')),
            label: 'PokeDopt',
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
              Navigator.pushNamed(context, '/PokeDopt');
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
