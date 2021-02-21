import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;


// Esta classe 

class _MenuProvider {

  List<dynamic> opciones = [];

  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('assets/menu_opts.json');
    Map dataMap = json.decode(resp);
    this.opciones = dataMap["rutas"];
    return opciones;
  }

  
}

final _MenuProvider menuProvider = new _MenuProvider();