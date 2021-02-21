import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 150;
  double _height = 150;
  Color _color = Colors.orange;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Container"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _cambiarForma,
        child: Icon(Icons.play_arrow),
      ),
      body: Center(
        child: GestureDetector(
          onTap: _cambiarForma,
          child: AnimatedContainer(
              curve: Curves.fastOutSlowIn,
              width: _width,
              height: _height,
              decoration:
                  BoxDecoration(borderRadius: _borderRadius, color: _color),
              duration: Duration(milliseconds: 700)),
        ),
      ),
    );
  }

  void _cambiarForma() {
    setState(() {
      var random = Random();
      _height = random.nextInt(300).toDouble();
      _width = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}
