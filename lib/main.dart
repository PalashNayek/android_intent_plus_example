import 'package:android_intent_plus_example/di/setupLocator.dart';
import 'package:android_intent_plus_example/screens/IntentScreen.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Android Intents App',
      home: IntentScreen(),
    );
  }
}
