import 'package:flutter/material.dart';
import 'package:flashcardapplication/pages/signin_page.dart'; // Assuming LoginPage is in login_page.dart

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}): super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // Wrap your widget with MaterialApp
      home: Scaffold(
        backgroundColor: Colors.red, // Set red background color
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Container with FLASH CARD and MASTER
                Container(
                  color: Colors.deepOrange, // Red background color
                  padding: EdgeInsets.symmetric(vertical: 90, horizontal: 15), // Add vertical padding
                  child: Column(
                    children: [
                      Text(
                        'FLASHCARD',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 56,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'MASTER',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 56,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),

                // Sign Up button

                // Register button
                ElevatedButton(
                  onPressed: () {
                    // Navigate to login page when register button is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                    child: Text('LOGIN'),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

