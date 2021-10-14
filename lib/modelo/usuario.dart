class Usuario {
  //? El atributo es opcional
  String? nombre;
  int? edad;
  String? control;

  String? carrera;
  //Las materias son obligatorias
  List<String> participacion;

  //Las materias las inicializamos con una lista vacia
  Usuario(
      {this.nombre,
      this.edad,
      this.control,
      this.carrera,
      this.participacion = const []});
}
