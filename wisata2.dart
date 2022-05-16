import 'dart:math';

import 'package:flutter/material.dart';

class PilihWisata2 extends StatefulWidget {
  @override
  WisataState createState() => WisataState();
}

class WisataState extends State<PilihWisata2> {
  @override
  var wisata = "";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(5)),
          Card(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(5)),
                Text(
                  'Wisata Gili Trawangan',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20.0, color: Colors.red),
                ),
                Padding(padding: EdgeInsets.all(2)),
                Row(
                  children: [
                    Image.network(
                      'https://a.cdn-hotels.com/gdcs/production81/d280/6195f3ef-5d8e-4c54-b4f6-1be9db241eba.jpg?impolicy=fcrop&w=800&h=533&q=medium',
                      width: 93,
                      height: 93,
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Expanded(
                        child: Container(
                      color: Colors.white,
                      child: Text(
                        'Gili Trawangan adalah yang terbesar dari ketiga pulau kecil atau gili yang terdapat di sebelah barat laut Lombok. Trawangan juga satu-satunya gili yang ketinggiannya di atas permukaan laut cukup signifikan',
                        maxLines: 8,
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 14),
                      ),
                    )),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 18),
                    hintText: "Masukkan Tanggapan Anda",
                  ),
                  onChanged: (var value) {
                    setState(() {
                      wisata = value;
                    });
                  },
                )
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(5)),
          Container(
            color: Colors.white,
            width: 385,
            height: 100,
            child: Text(
              this.wisata,
              style: TextStyle(
                color: Colors.brown[400],
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
