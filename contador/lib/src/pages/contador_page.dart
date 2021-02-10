import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  @override
  createState() => _ContadorPageState();

}

class _ContadorPageState extends State<ContadorPage> {

  final TextStyle _textSyle = new TextStyle(fontSize: 30, color: Colors.blueGrey[500]);
  int _count = 0;
  

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
              Text("Número de clicks: ", style: _textSyle),
              Text("$_count", style: _textSyle),
            ],
          ),
        ),
        floatingActionButton: _crearBotones()
      );
  }

  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: 30.0),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset),
        Expanded(child: SizedBox(),),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _substract),
        SizedBox(width: 5.0,),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _add),
      ],
    ); 
  }

  void _reset(){
    setState(() {
      _count = 0;
    });
  }

  void _substract(){
    setState(() {
      _count--;
    });
  }

  void _add(){
    setState(() {
      _count++;
    });
  }
}



