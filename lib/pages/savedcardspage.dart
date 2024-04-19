import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SavedCardsPage extends StatefulWidget {
  @override
  _SavedCardsPageState createState() => _SavedCardsPageState();
}

class _SavedCardsPageState extends State<SavedCardsPage> {
  late List<Map<String, String>> savedCards;

  @override
  void initState() {
    super.initState();
    // Initialize the savedCards list when the widget is first created
    _loadSavedCards();
  }

  Future<void> _loadSavedCards() async {
    final prefs = await SharedPreferences.getInstance();
    final savedCardsJson = prefs.getStringList('saved_cards');
    if (savedCardsJson != null) {
      setState(() {
        savedCards = savedCardsJson
            .map((json) => Map<String, String>.from(jsonDecode(json)))
            .toList();
      });
    } else {
      setState(() {
        savedCards = []; // Initialize to an empty list if no saved cards found
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saved Cards'),
      ),
      body: ListView.builder(
        itemCount: savedCards.length,
        itemBuilder: (context, index) {
          final card = savedCards[index];
          return ListTile(
            title: Text(card['frontText'] ?? ''),
            subtitle: Text(card['backText'] ?? ''),
          );
        },
      ),
    );
  }
}
