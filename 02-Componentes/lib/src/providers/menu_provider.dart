import 'package:flutter/services.dart' show rootBundle;


// Esta classe 

class _MenuProvider {

  List<dynamic> opciones = [];

  _MenuProvider(){
    cargarData();
  }

  cargarData() {
    rootBundle.loadString('assets/menu_opts.json').then( (data) {
      print(data);
  });
  }
}

final _MenuProvider menuProvider = new _MenuProvider();