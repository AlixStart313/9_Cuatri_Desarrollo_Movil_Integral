import "package:flutter/material.dart";

void main() {
  //Funcion que corre la app, este espera un widget ya sea con estado estatico o dinamico
  runApp(Inicio());
}

//Aqui los widgett son clases
// pueden tener cualquier nombre
//los widgetts estateles manejan la informacion de manera estatica
class Inicio extends StatelessWidget {
  //La extension de Stateles necesita este constructor
  @override
//este funciona para todos, el build construye el wigdet
  Widget build(BuildContext context) {
    //Este widget debe de retornal algo de manera obligatoria
    //return MaterialApp(
    //title:"Mi prinera app",
    //);
//El material app se establece como const por que ya no va a cambiar al crear el apk
    return MaterialApp(
        //Este establece la paleta de colores de la app
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange)
        ),
        //Este titulo es el de la pagina
        title: "Mi primera app en flutter",
        //Escanfaldo implmeneta una estructura basica, algo asi como el body de HTML
        home: Scaffold(
            //debemos de hacer la estructura
            appBar: AppBar(
              //un widget es aqulla palaba definida con propiedades, el text es el mas basico
              title: const Text(
                "Mi primera app en flutter",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 47, 33, 243),
                ),
              ),
            ),
            body: Container(
              child: Center(
                //En el body, cada widget es un hijo
                //Si quieres poner uno, solo pones un child
                // child :Text("Hola mundo desde body")
                //Si quieres poner mas de uno debes de poner un child(que podemos imaginarlo como un row de bootstrap),luego una columna y dentro un children
                child: //Que es el Row
                    Column(//Que es la columna
                        //Children es un array. dentro de el podra poner todos los widgets que quieras, separados por comas
                        children: [
                  //Los widgets que quieras poner
                  //const Text("Hola mundo 1"),
                  //const Text("Hola mundo 2"),
                  //Este es como un pading o deberia
                  //const SizedBox(
                  //width: 1000,
                  //),
                  //const Text("Hola mundo 3"),
                  //Ahora, una imagen
                  //const Image(
                  // a flutter debes de especificarle de donde estas sacando la imagen (internet, bas64,etc)
                  //image:
                  //En este caso, le pasamos la imagen de internet y le pasamos una URL
                  //NetworkImage("https://thispersondoesnotexist.com/"),
                  //Estlos
                  //width:300,
                  //height: 300,),
                  //Botones
                  //ElevatedButton(
                  //El onPress es que hara cuando se presione
                  // onPressed: (){
                  //  print("Presioname");
                  //},
                  //El child es que tendra el botton en este caso un boton con texto
                  //child: Text("Presioname"))
                  Row(
                    children: [
                      Image(
                        // a flutter debes de especificarle de donde estas sacando la imagen (internet, bas64,etc)
                        image:
                            //En este caso, le pasamos la imagen de internet y le pasamos una URL
                            NetworkImage("https://thispersondoesnotexist.com/"),
                        //Estlos
                        width: 50,
                        height: 50,
                      ),
                      Text("Lolita Ayala"),

                      
                      Column(
                        children: [
                          MyPersonalButton(action: "Actualizar",height: 30,width: 120,),
                          MyPersonalButton(action: "Eliminar",height: 30,width: 100,)  
                        ],
                      )
                    ],
                  )
                ]),
              ),
              margin: EdgeInsets.all(22),
              padding: EdgeInsets.all(22),
              decoration: BoxDecoration(color: Colors.pink),
            )));
  }
}

class MyPersonalButton extends StatelessWidget {
    String action;
    double width;
    double height;
    MyPersonalButton({this.action="Default",this.height=30,this.width=30});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: width,
        height: height,
        child: FilledButton.tonal(onPressed:(){}, child: Text("$action")),
      ),
    );
  }
}
