import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ContadorPage extends StatefulWidget {

  @override
  createState() => _ContadorPageState();

}

class _ContadorPageState extends State<ContadorPage>{
  final _estiloTexto = new TextStyle(fontSize: 25.0);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de clicks:', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto),
          ],
        )
      ),
      floatingActionButton: _crearBotones()
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton( onPressed: _reset, child: Icon(Icons.exposure_zero), backgroundColor: Colors.deepPurple),
        Expanded(child: SizedBox()),
        FloatingActionButton( onPressed: _sustraer, child: Icon(Icons.remove), backgroundColor: Colors.deepPurple),
        SizedBox(width: 10.0,),
        FloatingActionButton( onPressed: _agregar, child: Icon(Icons.add), backgroundColor: Colors.deepPurple)
      ],
    );
  }

  void _agregar() {
    setState(() =>_conteo++);
  }

  void _sustraer() {
    setState(() =>_conteo--);
  }

  void _reset() {
    setState(() =>_conteo = 0);
  }

}