import 'package:dsc_task3/dice.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DSC',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Dice(),
    );
  }
}
