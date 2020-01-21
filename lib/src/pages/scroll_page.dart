import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: <Widget>[_pagina1(), _pagina2()],
    ));
  }

  Widget _pagina1() {
    return Stack(children: <Widget>[
      _colorFondo(), 
      _imageFondo(), 
      _textos()
    ]);
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imageFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(image: AssetImage('assets/scroll-1.png'), fit: BoxFit.cover),
    );
  }

  Widget _textos() {
    final estiloTexto = TextStyle(color: Colors.white, fontSize: 50.0);

    return SafeArea(
      child: Column(
        children: <Widget>[
          Text('11°', style: estiloTexto),
          Expanded(
            child: Container(),
          ),
          Text('Miercoles', style: estiloTexto),
          Expanded(
            child: Container(),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            size: 70.0,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  Widget _pagina2() {
    return Stack(
      children: <Widget>[
        _colorFondoP2(),
        _buttonP2()
      ],
    );
  }

  Widget _colorFondoP2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    ); 
  }

  Widget _buttonP2() {
    final buttonStyle = TextStyle(
        fontSize: 30.0, 
        color: Colors.white, 
        backgroundColor: Colors.blue
      );

    return Center(
      child: RaisedButton(
        shape: StadiumBorder(),
        color: Colors.blue,
        onPressed: (){},
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
          child: Text('Bienvenido', style: buttonStyle)
        ),
      ),
    );
  }
}
