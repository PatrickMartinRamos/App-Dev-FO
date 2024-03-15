import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PokeDopt',
      theme: ThemeData.dark(), // Set the theme to dark mode
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('PokeDopt'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      // Add your search functionality here
                    },
                  ),
                  const SizedBox(width: 1),
                  IconButton(
                    icon: const Icon(Icons.filter_alt),
                    onPressed: () {
                      // Add your filter functionality here
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.notifications),
                    onPressed: () {
                      // Add your notification functionality here
                    },
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 5), // Add some space between the search bar and the image
          Container(
            color: Colors.grey.shade700, // Set the background color to a grayish shade
            padding: const EdgeInsets.all(16.0), // Add padding to create space between the content and the container edge
            child: Column(
              children: [
                Image.asset(
                  'assets/bannerPikachu.jpg',
                  fit: BoxFit.fill, // Ensure the image fills its container
                  height: 250,
                ),
                const SizedBox(height: 20), // Add some space between the image and the text
                const Center(
                  child: Text(
                    "With PokeDopt, starting your Pokemon Journey just requires a couple of clicks, and soon you'll have a forever companion! Not only that, for "
                        "people who just want a normal life and share their moments with their Poke Pals, then use the built-in social media platform to tell the world "
                        "about the joys between you and your Pokemon",
                    textAlign: TextAlign.center, // Center align the text
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 20), // Add space between the text and buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Add your login functionality here
                      },
                      child: Text('Log in'),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Adjust the radius here
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Add your sign-up functionality here
                      },
                      child: Text('Sign up'),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Adjust the radius here
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10), // Add some space between the gray box and the copyright text
          Center(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    // Handle tap event if needed
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: const Text(
                      "©PokeDopt by Ashie Loche and Patrick Ramos",
                      style: TextStyle(
                        fontSize: 10, // Adjust the font size here
                        decoration: TextDecoration.underline,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle tap event if needed
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: const Text(
                      "About Us",
                      style: TextStyle(
                        fontSize: 10, // Adjust the font size here
                        decoration: TextDecoration.underline,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle tap event if needed
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: const Text(
                      "Customer Care",
                      style: TextStyle(
                        fontSize: 10, // Adjust the font size here
                        decoration: TextDecoration.underline,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
