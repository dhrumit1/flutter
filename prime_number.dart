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
      appBar: AppBar(title: Text("Prime Number")),
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
              int number=int.parse(strtNumber.text);
              while(number<=int.parse(endNumber.text)){
                int count=0;
                for(int a=1;a<=number;a++)
                {
                  if(number%a==0)
                  {
                    count++;
                  }
                }
                if(count==2)
                {
                  print("prime number: $number");
                }
                number++;
              }
            },
            child: Text("Enter"))
      ]),
    );
  }
}
