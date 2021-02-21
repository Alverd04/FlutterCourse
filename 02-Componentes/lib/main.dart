import 'package:Componentes/src/pages/alert_page.dart';
import 'package:Componentes/src/pages/avatar_page.dart';
import 'package:Componentes/src/pages/home_page.dart';
import 'package:Componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      initialRoute: "/",
      // Rutas del programa
      routes: getRoutes(),
      // Rutas de redirecció
      onGenerateRoute: ( RouteSettings settings ) {
        print(settings.name);
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage()
        );
      },
    );
  }
}