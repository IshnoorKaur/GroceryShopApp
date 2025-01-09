// Importing the Flutter material library for UI components
import 'package:flutter/material.dart';

// Importing the IntroPage widget from the pages folder
import 'pages/intro_page.dart';

// Entry point of the application
void main() {
  // Runs the MyApp widget as the root of the application
  runApp(const MyApp());
}

// The main application widget
class MyApp extends StatelessWidget {
  // A constant constructor for the MyApp class
  const MyApp({super.key});

  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    // Returns the MaterialApp widget, which sets up the app's structure
    return const MaterialApp(
      // Hides the debug banner in the app
      debugShowCheckedModeBanner: false,
      
      // Sets the IntroPage widget as the home screen
      home: IntroPage(),
    );
  }
}
