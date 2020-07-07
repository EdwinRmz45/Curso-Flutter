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
      floatingActionButton: Row(   //Increments
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            
            backgroundColor: Colors.deepPurple,
            child: Icon(Icons.add,),
            onPressed: (){
              _conteo++;
              setState(() {
                
              });
            },
          ),
          FloatingActionButton(   //Decrements
            backgroundColor: Colors.deepPurple,
            child: Icon(Icons.exposure_neg_1,),
            onPressed: (){
              _conteo--;
              setState(() {
                
              });
            },
          )
        ],
        
      ),
      
    );
  }
}