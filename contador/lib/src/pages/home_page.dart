import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  
  final TextStyle textSyle = new TextStyle(fontSize: 30, color: Colors.blueGrey[500]);
  int count = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Hello world!"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Número de clicks: ", style: textSyle),
              Text("0", style: textSyle),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
             print("Pressed");
          },
          child: Icon(Icons.add),

        ),
      );
  }
}