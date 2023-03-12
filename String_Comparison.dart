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
      appBar: AppBar(title: Text("String Comparison")),
      body: Column(children: [
        SizedBox(height: 30),
        TextField(
            controller: strtNumber,
            decoration:
                InputDecoration(labelText: "enter the first String")),
        SizedBox(height: 10),
        TextField(
            controller: endNumber,
            decoration: InputDecoration(labelText: "enter the Second String")),
        SizedBox(height: 20),
        ElevatedButton(
            onPressed: () {
              String name1=strtNumber.text;
              String name2=endNumber.text;

              for(int i=0;i<name1.length;i++)
              { 
                int count=0;
                for(int j=0;j<name2.length;j++)
                {
                  if(name1[i]==name2[j])
                  { 
                    count++;
                  }
                }
                print(name1[i]+": $count");
              }
            },
            child: Text("Enter"))
      ]),
    );
  }
}
