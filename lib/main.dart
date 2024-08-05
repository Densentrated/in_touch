import 'package:flutter/material.dart';
import 'widgets/home_page_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "In_Touch",
      home: HomePage(title: 'Home Page'),
    );
  }
}
