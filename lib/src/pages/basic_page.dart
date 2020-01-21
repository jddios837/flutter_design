import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final fontTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final fontSubtitulo = TextStyle(fontSize: 20.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          _imagen(),
          _sectionTwo(),
          _sectionThree(),
          _texto(),
          _texto(),
          _texto(),
          _texto(),
          _texto(),
        ]),
      ),
    );
  }

  Widget _imagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://besthqwallpapers.com/Uploads/19-11-2017/29534/thumb2-mountain-landscape-sunset-mountain-lake-golden-sunset-forest.jpg'),
            height: 250.0,
            fit: BoxFit.cover,
      ),
    );
  }

  Widget _sectionTwo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Hermoso Lago', style: fontTitulo),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text('Lago en Santa Marta', style: fontSubtitulo)
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text('41', style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),
    );
  }

  Widget _sectionThree() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _accion(Icons.call, 'CALL'),
          _accion(Icons.near_me, 'ROUTE'),
          _accion(Icons.share, 'SHARE'),
        ],
      ),
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue))
      ],
    );
  }

  Widget _texto() {
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean in mi vel diam feugiat mollis in ut nisi. Curabitur vitae velit mi. Vestibulum consequat blandit nisi ac cursus. Integer sit amet fermentum risus. Nunc rutrum tincidunt nibh bibendum eleifend. Sed luctus id purus at commodo. Sed metus nunc, molestie ultricies lectus eu, porta porttitor lorem. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
