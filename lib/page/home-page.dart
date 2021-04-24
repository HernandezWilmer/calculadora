import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        Container(
          color: Colors.red,
          width: 100,
          height: 100,
          child: Center(child: Text("Hola Mundo")),
        ),
        Text("Estoy en el medio"),
        Container(
          color: Colors.blue,
          width: 100,
          height: 100,
          child: Center(child: Text("Hola Mundo")),
        ),
        Container(
          color: Colors.yellow,
          width: 100,
          height: 100,
          child: Center(child: Image(image: AssetImage("assets/imagen1.jpeg"))),
        ),
        ElevatedButton(onPressed: () {}, child: Icon(Icons.add)),
        ElevatedButton(onPressed: null, child: Text("Texto1")),
        ElevatedButton(
            onPressed: () {},
            child: Column(
              children: [Icon(Icons.add), Text("Texto2"), Text("Texto3")],
            )),
      ],
    );
  }
}
