import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          _page1(),
          _page2(),
        ],
      ),
    );
  }

  Widget _page1() {
    return Stack(
      children: [_backgroundColor(), _loadBackground(), _texts()],
    );
  }

  Widget _page2() {
    return Stack(
      children: [
        _backgroundColor(),
        _welcomeButton(),
      ],
    );
  }

  Center _welcomeButton() {
    return Center(
        child: RaisedButton(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          shape: StadiumBorder(),
          color: Colors.blue,
          onPressed: () {},
          child: Text(
            'Bienvenido',
            style: TextStyle(color: Colors.white, fontSize: 19),
          ),
        ),
      );
  }

  Widget _texts() {
    final textStyle = TextStyle(color: Colors.white, fontSize: 50.0);

    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 20.0),
          Text('11°', style: textStyle),
          Text('Miércoles', style: textStyle),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 70, color: Colors.white)
        ],
      ),
    );
  }

  Widget _backgroundColor() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.lightBlueAccent,
    );
  }

  Widget _loadBackground() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }
}
