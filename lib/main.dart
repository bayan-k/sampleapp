import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  void _buttonPressing() {
    String inputText = userNameController.text;
    print("the username is : $inputText");
  }

  TextEditingController userNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Login Page")),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              child: TextField(
                controller: userNameController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "Type in your text",
                  fillColor: Colors.white70,
                ),
              )),
          SizedBox(
            height: 20.0,
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 30.0, right: 30.0),
            child: TextField(
                decoration: InputDecoration(
              prefixIcon: Icon(Icons.key_sharp),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
              filled: true,
              hintStyle: TextStyle(color: Colors.grey[800]),
              hintText: "Type in your text",
              fillColor: Colors.white70,
            )),
          ),
          const Padding(padding: EdgeInsets.all(20.0)),
          ElevatedButton(onPressed: _buttonPressing, child: Text("Submit")),
        ]),
      ),
    );
  }
}
