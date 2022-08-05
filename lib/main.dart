// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp (home: Home()));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('InTrade'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Row(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Image.asset('assets/photo-1614226114656-998786bf0955.avif')
              ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(30),
                color: Colors.cyan,
                child: Text("1"),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(30),
                color: Colors.pinkAccent,
                child: Text("2"),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(30),
                color: Colors.amber,
                child: Text("3"),
              ),
            )
          ],
          ),
          // Cant apply margin or color for only padding widget
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.red,
          child: const Text("Press"),),
      );
  }
}