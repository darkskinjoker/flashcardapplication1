import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flashcardapplication/components/settings_tile.dart';
import 'package:flashcardapplication/pages/themeselectionpage.dart';
import 'package:flashcardapplication/pages/accountupdatepage.dart';

import 'languageselectionpage.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  ThemeMode _themeMode = ThemeMode.light;
  void _toggleTheme() async {
    // Navigate to the theme selection page
    final selectedTheme = await Navigator.push<ThemeMode>(
      context,
      MaterialPageRoute(builder: (context) => ThemeSelectionPage()), // Instantiate ThemeSelectionPage as a widget
    );
    if (selectedTheme != null) {
      // Set the selected theme
      setState(() {
        _themeMode = selectedTheme;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SettingsTile(
              color: Colors.blue,
              icon: Ionicons.person_circle_outline,
              title: "Account",
              onTap: () {
                // Navigate to the AccountUpdatePage when the "Account" tile is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AccountUpdatePage()),
                );
              },
              height: 180,
            ),
            /*const SizedBox(
              height: 30,
            ),
            SettingsTile(
              color: Colors.green,
              icon: Ionicons.pencil_outline,
              title: "Edit Information",
              onTap: () {},
              height: 140, // Adjust height as needed
            ),*/
            const SizedBox(
              height: 40,
            ),

            SettingsTile(
              color: Colors.redAccent,
              icon: Ionicons.language_outline,
              title: "Language",
              onTap: () {
                // Navigate to the LanguageSelectionPage when "Language" tile is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LanguageSelectionPage()),
                );
              },
              height: 180,
            ),
            const SizedBox(
              height: 40,
            ),
            SettingsTile(
              color: Colors.black,
              icon: Ionicons.moon_outline,
              title: "Theme",
              onTap: () async {
                // Navigate to the theme selection page
                final selectedTheme = await Navigator.push<ThemeMode>(
                  context,
                  MaterialPageRoute(builder: (context) => ThemeSelectionPage()),
                );

                // Update theme mode if a theme is selected
                if (selectedTheme != null) {
                  setState(() {
                    _themeMode = selectedTheme;
                  });
                }
              },
              height: 180,
            ),
          ],
        ),
      ),
    );
  }
}
