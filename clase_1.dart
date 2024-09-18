//if else
//for
//while
//do while
//switch
void main(){
  Vehiculo vehiculo = Auto(puertas: 5,cilindros: 6,transmision: true,marca: "Nissan",modelo: "Versa",anio:2010,matricula: "ABC123");
  print(vehiculo);
  vehiculo.avanzar(10);
}
//Clase Abstracta
abstract class Vehiculo{
  //Atributos
  String _marca;
  String _modelo;
  int _anio;
  String _matricula;
  int _kilometraje;
  //Metodos SET
  void set marca(String marca)=> _marca = marca;
  void set modelo(String modelo)=> _modelo = modelo;
  void set anio(int anio)=> _anio = anio;
  void set matricula(String matricula)=> _matricula = matricula;
  void set kilometraje(int kilometraje)=> _kilometraje= kilometraje;
  //Metodos GET
  String get marca => _marca;
  String get modelo => _modelo;
  int get anio => _anio;
  String get matricula => _matricula;
  int get kilometraje => _kilometraje;
  //Constructor
  Vehiculo({
    required String marca,
    required String modelo,
    required int anio,
    required String matricula,
    int kilometraje = 0
  }):   _marca = marca,
        _modelo = modelo,
        _anio = anio,
        _matricula = matricula,
        _kilometraje = kilometraje;
  //Override de funciones
  @override
  String toString() {
    return 'Marca: $_marca\nModelo: $_modelo\nAño: $_anio\nMatricula: $_matricula';
  }

}

abstract class acciones{
  void avanzar();
  void retroceder();
  void izquierda();
  void derecha();
  void frenar();
}

//Extends -> Herencia
class Auto extends Vehiculo implements acciones{
  int _puertas;
  int _cilindros;
  bool _transmision;

  void set puertas(int puertas)=> _puertas=puertas;
  void set cilindros(int cilindros)=> _cilindros=cilindros;
  void set transmision(bool transmision)=> _transmision=transmision;

  int get puertas=> _puertas;
  int get cilindros=> _cilindros;
  bool get transmision=>_transmision;

  Auto({
    required int puertas,
    required int cilindros,
    required bool transmision,
    required String marca,
    required String modelo,
    required int anio,
    required String matricula
  }):
      _puertas= puertas,
      _cilindros=cilindros,
      _transmision=transmision,
        super(marca: marca, modelo: modelo, anio: anio, matricula: matricula)
  ;

  @override
  void avanzar() {
    print("Estoy avanzando como un Auto");
  }

  @override
  String toString() {
    return super.toString() + '\nPuertas: $_puertas\nCilindros: $_cilindros\nTransmision: $_transmision';
  }

  @override
  void derecha() {
    print("Voy a la Derecha");
  }

  @override
  void frenar() {
    print("Estoy Frenando");
  }

  @override
  void izquierda() {
    print("Voy a la Izquierda");
  }

  @override
  void retroceder() {
    print("Voy hacia atras");
  }
}

class Persona implements acciones{
  @override
  void avanzar() {
    // TODO: implement avanzar
  }

  @override
  void derecha() {
    // TODO: implement derecha
  }

  @override
  void frenar() {
    // TODO: implement frenar
  }

  @override
  void izquierda() {
    // TODO: implement izquierda
  }

  @override
  void retroceder() {
    // TODO: implement retroceder
  }

}

//Aserciones
//Funciones con parametros nombrados, opcionales y con valores por defecto
//Enums -> Enumeraciones
//Exceptions -> Excepciones