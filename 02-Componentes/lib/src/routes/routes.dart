import 'package:Componentes/src/pages/alert_page.dart';
import 'package:Componentes/src/pages/animated_container.dart';
import 'package:Componentes/src/pages/avatar_page.dart';
import 'package:Componentes/src/pages/card_page.dart';
import 'package:Componentes/src/pages/home_page.dart';
import 'package:Componentes/src/pages/input_page.dart';
import 'package:flutter/material.dart';

// Archivo para definir las rutas de la aplicación
// Podemos añadir rutas de json o de cualquier otro lugar

Map <String, WidgetBuilder> getRoutes(){
  return <String, WidgetBuilder> {
        "/" : ( BuildContext context ) => HomePage(),
        "alert" : ( BuildContext context ) => AlertPage(),
        "avatar" : ( BuildContext context ) => AvatarPage(),
        "card" : (BuildContext context) => CardPage(), 
        "animatedContainer": (BuildContext context) => AnimatedContainerPage(), 
        "inputs":(BuildContext context) => InputPage()
      };
}