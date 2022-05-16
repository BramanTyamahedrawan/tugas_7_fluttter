import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/page/wisata2.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          actions: <Widget>[
            Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
          ],
          title: Center(child: Text('Tugas 7 Flutter')),
          backgroundColor: Colors.orange[800],
        ),
        backgroundColor: Colors.blueAccent,
        body: Column(
          children: [
            Padding(padding: EdgeInsets.all(10)),
            PilihWisata2(),
          ],
        ));
  }
}
