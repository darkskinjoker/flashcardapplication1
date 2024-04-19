import 'package:flutter/material.dart';

class AccountUpdatePage extends StatefulWidget {
  @override
  _AccountUpdatePageState createState() => _AccountUpdatePageState();
}

class _AccountUpdatePageState extends State<AccountUpdatePage> {
  String _newName = '';
  String _newPassword = '';

  void _updateAccount() {
    // Implement logic to update the account with _newName and _newPassword
    print('Updating account with name: $_newName and password: $_newPassword');
    // You can add your logic here to update the account information
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Account'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  _newName = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'Name',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              onChanged: (value) {
                setState(() {
                  _newPassword = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'New Password',
              ),
              obscureText: true, // Password field should be obscured
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _updateAccount();
              },
              child: Text('Update Account'),
            ),
          ],
        ),
      ),
    );
  }
}
