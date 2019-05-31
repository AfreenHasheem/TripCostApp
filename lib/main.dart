import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HelloYou(),
    );
  }
}

class HelloYou extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HelloYouState();

}

class _HelloYouState extends State<HelloYou>{
  String name = '';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello You'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: 'Please enter your name'
              ),
              onChanged: (String string){
                setState(() {
                  name = string;
                });
              },
            ),
            DropdownButton<String>(
                items: ['Dollars', 'Euro', 'Pounds'].map((String value){
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
            }).toList(),
              onChanged: (String value) {},
            ),
            Text('Hello ' +name + '!')
          ],
        ),
      ),
    );
  }
}

