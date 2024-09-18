import 'dart:ffi';
import 'dart:io';

void main() {
  int opc = 0;
  int sele = 0;
  print("**************Menu**************");
  print("1.Calcular area");
  print("2.Comprobar mayoria de edad");
  print("3.Calcular promedio");
  print("4.Tablas de multiplicar");
  print("0. Salir del menu");
  print("Seleccione una opcion de nuestro menu:");
  opc = int.parse(stdin.readLineSync()!);
  switch (opc) {
    case 1:
      print("Seleccione la figura a la que desea calcular el area \n 1.Triangulo \n2.Rectangulo \n3.Volver al menu anterior");
      sele = int.parse(stdin.readLineSync()!);
      Areas area=Areas();
      double resultado= area.calcularArea(sele);
      print("El area es de"+ resultado );

      break;
    default:
  }
}

class Areas {
  var base;
  var altura;
  var area;
  var figura;

  Areas();

  get getBase => this.base;

  set setBase(base) => this.base = base;

  get getAltura => this.altura;

  set setAltura(altura) => this.altura = altura;

  get getArea => this.area;

  set setArea(area) => this.area = area;

  get getFigura => this.figura;

  set setFigura(figura) => this.figura = figura;

  double calcularArea(int figura) {
    print("Ingrese la medida de la base");
    base = double.parse(stdin.readLineSync()!);
    print("Ingrese la medida de la altura");
    altura = double.parse(stdin.readLineSync()!);
    if (figura == 1) {
      area = (base * altura) / 2;
    } else if (figura == 2) {
      area = base * altura;
    } else {
      area = -1;
    }
    return area;
  }
}
