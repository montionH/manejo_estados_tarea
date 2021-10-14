import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manejo_estados_tarea/controlador/control.dart';
import 'package:manejo_estados_tarea/modelo/usuario.dart';
import 'package:manejo_estados_tarea/pantallas/pantalla2.dart';

class Pantalla1 extends StatelessWidget {
  const Pantalla1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Guardar la informacion de la inyeccion de dependencia
    final usuarioCtrl = Get.put(UsuarioController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 20, 500, 120),
        title: Text('Pantalla principal'),
      ),
      //Obx es de Getx y cada vez que cambia una propiedad de estado, se redibuja el widget
      body: Obx(() => usuarioCtrl.existeUsuario.value
          ? InformacionUsuario(
              usuario: usuarioCtrl.usuario.value,
            )
          : NoUsuario()),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.dashboard_customize),
          onPressed: () => Get.toNamed(
              'pantalla2', //boton que me manda a la segunda pantalla
              arguments: {})),
    );
  }
}

class NoUsuario extends StatelessWidget {
  const NoUsuario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('No se ha agregado el alumno'),
    );
  }
}

class InformacionUsuario extends StatelessWidget {
  final Usuario usuario;
  const InformacionUsuario({Key? key, required this.usuario}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Usuario'),
          Divider(),
          ListTile(
            title: Text('Nombre: ${this.usuario.nombre}'),
          ),
          ListTile(
            title: Text('Edad: ${this.usuario.edad}'),
          ),
          ListTile(
            title: Text('N° control: ${this.usuario.control}'),
          ),
          ListTile(
            title: Text('carrera: ${this.usuario.carrera}'),
          ),
          Divider(),
          Text('Materias'),
          Divider(),
          ...usuario.participacion.map(
            (e) => ListTile(
              title: Text(e),
            ),
          ),
        ],
      ),
    );
  }
}
