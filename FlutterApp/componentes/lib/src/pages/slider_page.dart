import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Slider'),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen()
            ),
          ],
        )
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.blueGrey,
      label: 'Tamaño de la imagen',
      //divisions: 20,
      value: _valorSlider,
      min: 10,
      max: 400,
      onChanged: (_bloquearCheck) ? null : (valor){
        setState(() {
          _valorSlider = valor;
        });
        
      },
    );
  }

  Widget _checkBox() {
    // return Checkbox(
    //   value: _bloquearCheck,
    //   onChanged: (valor){
    //     setState(() {
    //       _bloquearCheck = valor;

    //     });
    //   },
    // );
    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor;

        });
      },
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor;

        });
      },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://http2.mlstatic.com/gorra-batman-logo-negro-100-original-dc-comics-D_NQ_NP_765613-MLM29063269147_122018-F.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}