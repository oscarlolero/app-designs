import 'dart:math';
import 'dart:ui';

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
        textTheme: Theme.of(context).textTheme
          .copyWith(caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))
      ),
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
}
