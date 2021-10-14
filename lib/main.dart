import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manejo_estados_tarea/pantallas/pantalla1.dart';
import 'package:manejo_estados_tarea/pantallas//pantalla2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Manejo de estados tarea',
      initialRoute: '/pantalla1',
      getPages: [
        //Podemos usar inyeccion de dependencias
        GetPage(name: '/pantalla1', page: () => Pantalla1()),
        GetPage(name: '/pantalla2', page: () => Pantalla2())
      ],
    );
  }
}
