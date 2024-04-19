import 'package:flashcardapplication/pages/settingspage.dart';
import 'package:flutter/material.dart';
import 'package:flashcardapplication/pages/flashcardspage.dart'; // Import the FlashCardsPage

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double widthPadding = 20.0;

    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: widthPadding),
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                _buildCard(
                  context,
                  title: 'CARDS',
                  onTap: () {
                    // Navigate to cards page
                  },
                ),
                _buildCard(
                  context,
                  title: 'FLASH CARDS',
                  onTap: () {
                    // Navigate to flash cards page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FlashCardsPage()), // Navigate to FlashCardsPage
                    );
                  },
                ),
                _buildCard(
                  context,
                  title: 'SETTINGS',
                  onTap: () {
                    // Navigate to settings page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SettingsPage()),
                    );
                  },
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context,
      {required String title, required VoidCallback onTap}) {
    IconData? iconData;
    // Determine which icon to use based on the title
    switch (title) {
      case 'CARDS':
        iconData = Icons.credit_card; // Use credit card icon for "Cards"
        break;
      case 'FLASH CARDS':
        iconData = Icons.flash_on; // Use flash icon for "Flash Cards"
        break;
      case 'SETTINGS':
        iconData = Icons.settings; // Use settings icon for "Settings"
        break;
    }

    return Card(
      elevation: 3, // Adjust elevation for a raised effect
      margin: EdgeInsets.symmetric(vertical: 10), // Add margin for separation
      color: Colors.deepOrange, // Set background color of the card to deep orange
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 80), // Adjust vertical padding to make the card longer
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16), // Add horizontal padding
          child: Text(
            title,
            style: TextStyle(fontSize: 18, color: Colors.white), // Increase font size and set text color to white
          ),
        ),
        trailing: iconData != null
            ? Icon(
          iconData,
          color: Colors.white, // Set icon color to white
        )
            : null, // Add icon based on title
        onTap: onTap != null
            ? onTap
            : () {
          // Default behavior if onTap is not provided
          if (title == 'SETTINGS') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingsPage()),
            );
          } else if (title == 'CARDS') {
            // Navigate to the page where the saved cards are displayed
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SavedCardsPage()), // Replace SavedCardsPage with the actual page where you display saved cards
            );
          }
        },
      ),
    );
  }
}
