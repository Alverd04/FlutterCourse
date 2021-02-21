import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.follow_the_signs_sharp),
        onPressed: () => Navigator.pop(context),
      ),
      appBar: AppBar(
        title: Text("Alert Page"),
      ),
      body: Center(
          child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        shape: StadiumBorder(),
        child: Text("Mostrar alert"),
        onPressed: () => _mostrarAlert(context),
      )),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            backgroundColor: Colors.blue[50],
            title: Text("TItulo"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Contenido"),
                FlutterLogo(
                  size: 100,
                ),
              ],
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: ()=> Navigator.of(context).pop(),
                child: Text("Cancelar")),
              FlatButton(
              onPressed: ()=> Navigator.of(context).pop(), 
              child: Text("Ok"))
            ],
          );
        });
  }
}
