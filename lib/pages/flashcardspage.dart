import 'package:flutter/material.dart';
import '/flash_card.dart'; // Import the FlashCard model

class FlashCardsPage extends StatefulWidget {
  @override
  _FlashCardsPageState createState() => _FlashCardsPageState();
}

class _FlashCardsPageState extends State<FlashCardsPage> {
  List<FlashCard> flashCards = []; // List to store flash cards

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flash Cards'),
      ),
      body: ListView.builder(
        itemCount: flashCards.length,
        itemBuilder: (context, index) {
          final flashCard = flashCards[index];
          return ListTile(
            title: Text(flashCard.frontText),
            subtitle: Text(flashCard.backText),
            // Add delete functionality here if needed
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // Navigate to flash card creation page
          final newFlashCard = await Navigator.push<FlashCard>(
            context,
            MaterialPageRoute(builder: (context) => CreateFlashCardPage()),
          );
          if (newFlashCard != null) {
            setState(() {
              flashCards.add(newFlashCard);
            });
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class CreateFlashCardPage extends StatelessWidget {
  final TextEditingController frontTextController = TextEditingController();
  final TextEditingController backTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Flash Card'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: frontTextController,
              decoration: InputDecoration(labelText: 'Front Text'),
            ),
            TextField(
              controller: backTextController,
              decoration: InputDecoration(labelText: 'Back Text'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                final newFlashCard = FlashCard(
                  frontText: frontTextController.text,
                  backText: backTextController.text,
                );
                Navigator.pop(context, newFlashCard);
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
