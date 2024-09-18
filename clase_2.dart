import 'dart:io';

enum Instrumentos{
  Piano,
  Guitarra,
  Bateria,
  Bajo
}

mixin musico{
  Instrumentos? intrumento;
  //void tocarInstrumento(String instrumento);

  void tocarPiano({String? nombre}){
    print("$nombre esta  tocando el $intrumento");
  }
  void tocarGuitarra(String? nombre){
    print("$nombre esta  tocando la Guitarra");
  }
  void tocarBateria(String? nombre){
    print("$nombre esta  tocando la Bateria");
  }
}

mixin programador{
  void programar(String nombre){
    print("Soy $nombre y Estoy programando en DART 😀");
  }
}



class Persona with musico,programador{
  String _nombre;
  int _edad;



  void set nombre(String nombre){
      _nombre=nombre;
      try{
      assert(nombre.length>0,throw "El nombre no puede estar vacio");
    }catch(e){
      print(e);
      }

  }
  String get nombre=> _nombre;

  void set edad(int edad) {
    _edad = edad;
    try{
      assert(edad>0,throw ("La edad no puede ser menor a 0"));
    }catch(e){
      print(e);
    }
  }
  int get edad=> _edad;

  Persona({String nombre="",int edad=0}): _nombre=nombre, _edad=edad;

}

class Gato with musico,programador{
  String? nombre;
}

void main(){
  int opc=1;
  int res=0;

  while (opc==1){
    Instrumentos? instrumentos= Instrumentos.Piano;
    print(instrumentos.name);
    print("Selecciona una opcion para crear un objeto:");
    print("1.- Persona");
    print("2.- Gato");
    res=int.parse(stdin.readLineSync()!);
    switch (res){
      case 1:
        Persona persona= Persona();
        print("Como se llama la persona");
        persona.nombre=stdin.readLineSync() as String;
        print("Cuantos años tiene?");
        persona.edad=int.parse(stdin.readLineSync()!);
        persona.tocarPiano(nombre: persona.nombre);
        break;
      case 2:
        Gato gato= Gato();
        print("Como se llama la persona");
        gato.nombre=stdin.readLineSync() as String?;
        gato.tocarGuitarra(gato.nombre);
        break;
    }
    print("Deseas crear otro objeto? 1.- Si 2.- No");
    opc=int.parse(stdin.readLineSync()!);
  }
}