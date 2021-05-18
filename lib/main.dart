import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Hope: ",
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        /*appBar: AppBar(
          title: Text("A new hope"),
        ),*/
        body: HelloStateful(),
      ),
    )
  );
}

class HelloStateless extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.amber,
        height: 500,
        width: 300,
        child: Center(
          child: Text(
            "Star Wars",
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
                fontFamily: 'Times New Roman',
            ),
          ),
        ),
      ),
    );
  }
}

class _HelloState extends State<HelloStateful>{
  // ignore: non_constant_identifier_names
  int variable_estado = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful thing"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Luke",
                style: TextStyle(
              color: Colors.greenAccent,
            )),
            Text("Leia",
                style: TextStyle(
              color: Colors.redAccent,
            )),
            Text("Change of state variable: ${variable_estado}",
              style: TextStyle(
                color: Colors.purpleAccent,
              )
            ),
          ],
        ),
      ),
      floatingActionButton: _crea_botones(),
    );
  }

  Widget _crea_botones(){
    return Row(
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: funcion_zero),
        // Boton a increementa por 1
        FloatingActionButton(child: Icon(Icons.exposure_plus_1), onPressed: functionPlus1),
        // Boton decrementar por 1
        FloatingActionButton(child: Icon(Icons.exposure_minus_1), onPressed: functionMinus1),
        // Botón num random
        FloatingActionButton(child: Icon(Icons.shuffle), onPressed: functionRandom),
        // Botón regresar a -1
        FloatingActionButton(child: Icon(Icons.settings_backup_restore), onPressed: functionReturn1),

      ],
    );
  }

  void funcion_zero(){
    setState((){
      variable_estado = 0;
    });
  }

  void functionZero(){
    setState(() {
      variable_estado = 0;
    });
  }

  void functionPlus1(){
    setState(() {
      variable_estado += 1;
    });
  }

  void functionMinus1(){
    setState(() {
      variable_estado -= 1;
    });
  }

  void functionRandom(){
    setState(() {
      Random rng = new Random();
      variable_estado = rng.nextInt(variable_estado+100) + variable_estado;
    });
  }

  void functionReturn1(){
    setState(() {
      variable_estado = -1;
    });
  }

}

class HelloStateful extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HelloState();
  }
}



