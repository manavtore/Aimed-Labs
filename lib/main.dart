import 'package:aimed_labs/Screen/card1.dart';
import 'package:aimed_labs/Screen/card2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Responsive Cards'),
        ),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        child: const Column(
          children: [
            Expanded(
              child: Card1(),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(child: Card2()),
          ],
        ),
      ),
    );
  }
}
