import 'package:flutter/material.dart';

class ThemeSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Selection'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Set theme to light mode
                Navigator.pop(context, ThemeMode.light);
              },
              child: Text('Light Theme'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Set theme to dark mode
                Navigator.pop(context, ThemeMode.dark);
              },
              child: Text('Dark Theme'),
            ),
          ],
        ),
      ),
    );
  }
}
