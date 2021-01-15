import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _appBackground(),
          SingleChildScrollView(
            child: Column(
              children: [
                _titles(),
                _roundedButtons(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _buildPersonalizedBottomNavigationBar(context),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.bar_chart_outlined),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.pie_chart_outlined),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.supervised_user_circle),
        ),
      ],
    );
  }

  Widget _buildPersonalizedBottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
      child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.bar_chart_outlined, size: 30),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.pie_chart_outlined, size: 30),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.supervised_user_circle, size: 30),
          ),
        ],
      ),
    );
  }

  Widget _appBackground() {
    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0, 0.6),
          end: FractionalOffset(0, 1.0),
          colors: [
            Color.fromRGBO(52, 53, 101, 1),
            Color.fromRGBO(35, 37, 57, 1),
          ],
        ),
      ),
    );
    final pinkBox = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromRGBO(236, 98, 188, 1),
            Color.fromRGBO(241, 142, 172, 1),
          ]),
          borderRadius: BorderRadius.circular(90.0),
        ),
      ),
    );

    return Stack(
      children: [
        gradient,
        Positioned(
          top: -100.0,
          child: pinkBox,
        ),
      ],
    );
  }

  Widget _titles() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Classify transaction',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Classify this transaction into a particular caregory.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _roundedButtons() {
    return Table(
      children: [
        TableRow(
            children: [
              _buildRoundedButton( Colors.blue, Icons.border_all, 'General' ),
              _buildRoundedButton( Colors.purpleAccent, Icons.directions_bus, 'Bus' ),
            ]
        ),
        TableRow(
            children: [
              _buildRoundedButton( Colors.pinkAccent, Icons.shop, 'Buy' ),
              _buildRoundedButton( Colors.orange, Icons.insert_drive_file, 'File' ),
            ]
        ),
        TableRow(
            children: [
              _buildRoundedButton( Colors.blueAccent, Icons.movie_filter, 'Entertaiment' ),
              _buildRoundedButton( Colors.green, Icons.cloud, 'Grocery' ),
            ]
        ),
        TableRow(
            children: [
              _buildRoundedButton( Colors.red, Icons.collections, 'Photos' ),
              _buildRoundedButton( Colors.teal, Icons.help_outline, 'General' ),
            ]
        )
      ],
    );
  }

  Widget _buildRoundedButton(Color color, IconData icon, String text) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur( sigmaX: 10.0, sigmaY: 10.0 ),
          child: Container(
            height: 180.0,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(height: 5.0),
                CircleAvatar(
                  radius: 35.0,
                  backgroundColor: color,
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 30.0,
                  ),
                ),
                Text(text, style: TextStyle(color: Colors.pinkAccent),),
                SizedBox(height: 5.0)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
