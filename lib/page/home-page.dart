/*Puntos para hacer:
// 1. realizar la validación cuando solo tengo un valor en operacion y doy click en = ,
//      - agrega el valor en area de resultados
//      - mantienen el valor y no agrega mas valores en area de resultados
// 2. Generar mensaje de error para expresiones malformadas
//  - crear un mensaje de alerta cuando las expresiones  son mal formadas ej:  85 *****
// 3. Agregar boton y funcionaldiad de raiz cuadrada
// 4. Agregar boton y funcionalidad cuadrado
// 5. Agregar boton y funcionalidad porcentaje ej. 200*5% = 10
*/

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String operaciones = "";
  String resultadoOperaciones = "";
  List<Text> listaResultados = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora"),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.red,
            //child: Text(resultadoOperaciones),
          ),
        ),
        Container(
          color: Colors.blue,
          height: 100,
          child: Row(
            children: [
              Text(operaciones),
            ],
          ),
        ),
        Container(
          color: Colors.yellow,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          operaciones += "7";
                        });
                      },
                      child: Text("7")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          operaciones += "8";
                        });
                      },
                      child: Text("8")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          operaciones += "9";
                        });
                      },
                      child: Text("9")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          operaciones += " / ";
                        });
                      },
                      child: Text("/"))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        //Falta
                      },
                      child: Text("4")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          operaciones += "5";
                        });
                      },
                      child: Text("5")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          operaciones += "6";
                        });
                      },
                      child: Text("6")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          operaciones += " x ";
                        });
                      },
                      child: Text("x"))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          operaciones += "1";
                        });
                      },
                      child: Text("1")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          operaciones += "2";
                        });
                      },
                      child: Text("2")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          operaciones += "3";
                        });
                      },
                      child: Text("3")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          operaciones += " - ";
                        });
                      },
                      child: Text("-"))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          operaciones += "0";
                        });
                      },
                      child: Text("0")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          operaciones = "";
                        });
                      },
                      child: Text("C")),
                  ElevatedButton(
                      onPressed: () {
                        _calcularOperacion();
                      },
                      child: Text("=")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          operaciones += " + ";
                        });
                      },
                      child: Text("+"))
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _calcularOperacion() {
    print(operaciones);
    var arreglo = operaciones.split(" ");
    int resultado = 0;
    //print(arreglo);

    if (arreglo[1].trim() == "-") {
      resultado = int.parse(arreglo[0]) - int.parse(arreglo[2]);
    } else if (arreglo[1].trim() == "+") {
      resultado = int.parse(arreglo[0]) + int.parse(arreglo[2]);
    } else if (arreglo[1].trim() == "/") {
      resultado = int.parse(arreglo[0]) ~/ int.parse(arreglo[2]);
    } else if (arreglo[1].trim() == "x") {
      resultado = int.parse(arreglo[0]) * int.parse(arreglo[2]);
    }
    setState(() {
      listaResultados.add(Text("$resultado"));
    });

    //resultadoOperaciones = "El resultado es: $resultado";
    print("El resultado es: $resultado");
  }
}
