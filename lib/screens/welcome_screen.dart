import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Artfolio'),
      ),
      body: Center(
        child: Text(
          'Welcome to Artfolio!',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
