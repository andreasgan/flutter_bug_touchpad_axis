import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          itemBuilder: (context, index) => Container(
            color: Colors.white,
            height: 210,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Box(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Box extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        width: 150,
        color: Colors.black,
        padding: EdgeInsets.all(10),
        child: Container(
          color: Colors.grey,
        ));
  }
}
