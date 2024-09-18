/**
 * 
 * 
 */

void main(){
  String name="liss";
  int edad= 21;
  double altura=1.56;
  bool isActive=true;
  DateTime fechaNac=DateTime(2003,01,01);
  String generos;
  print("hola mundo $name");
}

class persona{
  String name;
  String Apellidos;
  int edad;
  double altura;
  bool active;
  DateTime cumple;

  persona(
    this.name,
    this.Apellidos,
    this.edad,
    this.active,
    this.altura,
    this.cumple
  );
  
}