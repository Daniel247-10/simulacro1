class Animal {
  String nombre;
  String especie;
  int edad;

  Animal(this.nombre, this.especie, this.edad);

  void hacerSonido() {
    print('El animal hace un sonido genérico.');
  }

  void mostrarInfo() {
    print('Información del Animal');
    print('Nombre: $nombre');
    print('Especie: $especie');
    print('Edad: $edad años');
  }

  bool esAdulto() {
    return edad >= 3;
  }
}

class Perro extends Animal {
  Perro(String nombre, int edad) : super(nombre, 'Perro', edad);

  @override
  void hacerSonido() {
    print('¡Guau! Soy $nombre');
  }

  void buscarPelota() {
    print('$nombre está buscando la pelota!');
  }
}

void main() {
  Animal animalGenerico = Animal('Simba', 'León', 2);
  Perro miPerro = Perro('Rex', 4);

  print('Objeto Animal');
  animalGenerico.hacerSonido();
  animalGenerico.mostrarInfo();
  print('¿Es adulto?: ${animalGenerico.esAdulto()}');
  print('');

  print('Objeto Perro');
  miPerro.hacerSonido();
  miPerro.mostrarInfo();
  print('¿Es adulto?: ${miPerro.esAdulto()}');

  print('');
  miPerro.buscarPelota();
}
