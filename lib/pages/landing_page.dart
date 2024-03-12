import 'package:flutter/material.dart';

class landing_page extends StatefulWidget {
  const landing_page({Key? key});

  @override
  State<landing_page> createState() => _landing_pageState();
}

class _landing_pageState extends State<landing_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              ElevatedButton(
                onPressed: () {
                  // Add functionality for sign in button here
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                  child: Text('Sign Up'),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
              ),
              const SizedBox(height: 20),

              // Register button
              ElevatedButton(
                onPressed: () {
                  // Add functionality for register button here
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                  child: Text('Register'),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

