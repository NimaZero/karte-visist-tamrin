import 'package:flutter/material.dart';
import './home_screen.dart';

// ./ for import dige roo system haye dige error nemide

void main() {
  runApp(const BussinessCard());
}

class BussinessCard extends StatelessWidget {
  const BussinessCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
