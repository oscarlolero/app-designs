import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final titleStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final subtitleStyle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _createImage(),
            _createDescription(),
            _createOptions(),
            _createText(),
            _createText(),
            _createText(),
            _createText(),
          ],
        ),
      ),
    );
  }

  Widget _createImage() {
    return Image(
      image: NetworkImage(
          'https://i.pinimg.com/originals/a1/78/55/a1785592d41e140f00ef1cf3d9597dcb.png'),
    );
  }

  Widget _createDescription() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Montañas al atardecer', style: titleStyle),
                SizedBox(height: 7.0),
                Text('Montañas con un bosque', style: subtitleStyle),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red, size: 24),
          Text(
            '41',
            style: TextStyle(fontSize: 20.0),
          )
        ],
      ),
    );
  }

  Widget _createOptions() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: [
          _createLabeledButton('CALL', Icons.phone),
          _createLabeledButton('ROUTE', Icons.near_me),
          _createLabeledButton('CALL', Icons.share),
        ],
      ),
    );
  }

  Widget _createLabeledButton(String text, IconData icon) {
    return Expanded(
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.blue,
            size: 28,
          ),
          SizedBox(height: 8),
          Text(
            text,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 15,
            ),
          )
        ],
      ),
    );
  }

  Widget _createText() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Text(
        'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}
