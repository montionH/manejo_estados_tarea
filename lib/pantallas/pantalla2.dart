import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manejo_estados_tarea/controlador/control.dart';
import 'package:manejo_estados_tarea/modelo/usuario.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //print(Get.arguments);
    //print(Get.arguments['Materia']);
    final usuarioCtrl = Get.find<UsuarioController>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 60, 215, 127),
        title: Text('Pantalla 2'),
      ),
      body: Center(
        child: Column(children: [
          MaterialButton(
            color: Colors.green[700],
            child: Text('Establecer usuario',
                style: TextStyle(color: Colors.white)),
            onPressed: () {
              usuarioCtrl.cargarUsuario(
                Usuario(
                    nombre: 'Isaac Montión hernández',
                    edad: 22,
                    control: 'asignar numero de control',
                    carrera: ''),
              );
            },
          ),
          Divider(),
          MaterialButton(
            color: Colors.yellowAccent[400],
            child: Text('asignar numero de control',
                style: TextStyle(color: Colors.white)),
            onPressed: () {
              usuarioCtrl.control('17540107');
            },
          ),
          Divider(),
          MaterialButton(
            color: Colors.blue[400],
            child: Text('asignar la carrera',
                style: TextStyle(color: Colors.white)),
            onPressed: () {
              usuarioCtrl.carrera('ingenieria en sistemas computacionales');
            },
          ),
          Divider(),
          MaterialButton(
            color: Colors.purple[400],
            child: Text('Agregar participaciones',
                style: TextStyle(color: Colors.white)),
            onPressed: () {
              usuarioCtrl.agregarparticipacion(
                  'participacion: #${usuarioCtrl.usuario.value.participacion.length + 1}');
            },
          ),
          Divider(),
        ]),
      ),
    );
  }
}
