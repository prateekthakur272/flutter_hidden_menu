import 'package:flutter/material.dart';
import 'package:flutter_hidden_menu/screens/home_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      theme: ThemeData(
        useMaterial3: true
      ),
    );
  }
}


void main(){
  runApp(const App());
}