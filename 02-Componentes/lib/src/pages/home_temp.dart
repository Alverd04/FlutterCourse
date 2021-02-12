import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ["Uno", "Dos", "Tres", "Cuatro", "Cinco"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes Temp"),
      ),
      body: ListView(
        children: _crearItemsCorta(),
      ),
    );
  }

  // Metodo para crar items a partir de una lista
  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();
    for (String opt in this.opciones) {
      final tempWidget = ListTile(
        title: Text(opt)
      );
      lista.add(tempWidget);
      lista.add(Divider());
    }
    return lista;
  } 

  // Ejemplo del metodo map de Flutter
  // Tip ctr + .  para encapsular en una Columna

  List<Widget> _crearItemsCorta(){
    return opciones.map(
      (item) => Column(
        children: [
          ListTile(
            title: Text( item ),
            subtitle: Text("Subtitulo de " + item),
            leading: Icon(Icons.add_outlined),
            trailing: Icon(Icons.arrow_right),
            onTap: (){},
          ),
          Divider(),
        ],
      )
      ).toList(); 
  }

}

