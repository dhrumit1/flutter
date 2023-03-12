import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  TextEditingController strtNumber = new TextEditingController();
  TextEditingController endNumber = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Even Number")),
      body: Column(children: [
        SizedBox(height: 30),
        TextField(
            controller: strtNumber,
            decoration:
                InputDecoration(labelText: "enter the starting number")),
        SizedBox(height: 10),
        TextField(
            controller: endNumber,
            decoration: InputDecoration(labelText: "enter the ending number")),
        SizedBox(height: 20),
        ElevatedButton(
            onPressed: () {
              for (int number = int.parse(strtNumber.text); number <= int.parse(endNumber.text); number++) {
                if (number % 2 == 0) {
                  print(number);
                }
              }
            },
            child: Text("Enter"))
      ]),
    );
  }
}
