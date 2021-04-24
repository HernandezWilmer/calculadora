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
        ),
        Text("Estoy en el medio"),
        Container(
          color: Colors.blue,
          height: 100,
        ),
        Container(
            color: Colors.yellow,
            child: Column(
              children: [
                Row(children: [
                  ElevatedButton(onPressed: () {}, child: Text("0")),
                  ElevatedButton(onPressed: () {}, child: Text("C")),
                  ElevatedButton(onPressed: () {}, child: Text("=")),
                  ElevatedButton(onPressed: () {}, child: Text("+")),
                ]),
              ],
            )),
      ],
    );
  }
}
