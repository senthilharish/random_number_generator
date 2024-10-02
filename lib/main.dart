import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

int a = 0;
int b = 0;
int randomNumber = 0; // Global variable to hold the random number

final _textcontroller1 = TextEditingController();
final _textcontroller2 = TextEditingController();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 132, 191, 239),
        title: Center(child: const Text("Random Number",style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic,))),
      ),
      backgroundColor: const Color.fromARGB(255, 204, 226, 244),
      body: Column(
        children: [
          const SizedBox(height: 30,),
          input(_textcontroller1, "Enter the min number"),
          const SizedBox(height: 20),
          input(_textcontroller2, "Enter the max number"),
          const SizedBox(height: 50),
          button(),
          const SizedBox(height: 100),
          Text("The luckiest roll number is $randomNumber",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: const Color.fromARGB(255, 192, 45, 65)),), // Display the random number
        ],
      ),
    ));
  }

  TextField input(control, htext) {
    return TextField(
      controller: control,
      decoration: InputDecoration(
      
          border: OutlineInputBorder(
            
            borderRadius: BorderRadius.circular(15),
            
          ),
          hintText: htext,hintStyle: TextStyle(fontStyle: FontStyle.italic)),
      keyboardType: TextInputType.number, // Ensure only numbers are entered
    );
  }

  MaterialButton button() {
    return MaterialButton(
      onPressed: () {
        setState(() {
          // Convert the entered text to an integer
          a = int.tryParse(_textcontroller1.text) ?? 0;
          b = int.tryParse(_textcontroller2.text) ?? 0;
          if (a < b) {
            randomNumber = a + Random().nextInt(b - a);
          }
          else{
            randomNumber = 0; 
          }
        });
      },
      color: Colors.blueGrey,
      child: const Text("Generate",style: TextStyle(fontSize:18),),
    );
  }
}
