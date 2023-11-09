import 'package:flutter/material.dart';
import 'package:flutter_hidden_menu/hidden_menu.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HiddenMenu(),
      theme: ThemeData(
          useMaterial3: true,
          appBarTheme: AppBarTheme(
              color: Colors.deepPurple.shade500,
              foregroundColor: Colors.white)),
    );
  }
}

void main() {
  runApp(const App());
}
