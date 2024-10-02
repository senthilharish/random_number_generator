import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(title:const Text("random number"),),
        body: Column(
          children: [
            
          ],
        ),
      )
    );
  }
}
