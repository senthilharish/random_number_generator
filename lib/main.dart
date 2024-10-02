import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

int a = 0;
int b = 0;

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
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Random Number"),
      ),
      body: Column(
        children: [
          input(_textcontroller1),
          button(a,_textcontroller1),
          input(_textcontroller2),
          button(b,_textcontroller2),
          SizedBox(
            height: 20,
          ),
          
        ],
      ),
    ));
  }


  TextField input(control) {
    return TextField(
          controller: control,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: "Enter the starting number:"),
          keyboardType: TextInputType.number, // Ensure only numbers are entered
        );
  }
    MaterialButton button(value,control1) {
    return MaterialButton(
          onPressed: () {
            setState(() {
              // Convert the entered text to an integer
              value = int.tryParse(control1.text) ?? 0;
              print(value);
            });
          },
          color: Colors.blueGrey,
          child: const Text("click"),
        );
  }

}
