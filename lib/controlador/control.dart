import 'package:get/get.dart';
import 'package:manejo_estados_tarea/modelo/usuario.dart';

class UsuarioController extends GetxController {
  //Observables
  var existeUsuario = false.obs;
  var usuario = new Usuario().obs;

  //Metodo para crear usuario y cambiar el valor del observable
  void cargarUsuario(Usuario usuario) {
    this.existeUsuario.value = true;
    this.usuario.value = usuario;
  }

  void control(String control) {
    this.usuario.update((val) {
      val!.control = control;
    });
  }

  void carrera(String carrera) {
    this.usuario.update((val) {
      val!.carrera = carrera;
    });
  }

  void agregarparticipacion(String participacion) {
    this.usuario.update((val) {
      //...sprep
      val!.participacion = [...val.participacion, participacion];
    });
  }
}
