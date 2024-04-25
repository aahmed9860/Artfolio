import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart'; // Import the WelcomeScreen widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Artfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomeScreen(), // Use the WelcomeScreen widget as the home screen
    );
  }
}
