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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Row(
              children: const <Widget>[
                Text("Hello"),
                Text(" World")
              ],
            ),
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.cyan,
              child: Text("one"),
            ),
            Container(
              padding: EdgeInsets.all(30),
              color: Colors.pinkAccent,
              child: Text("two"),
            ),
            Container(
              padding: EdgeInsets.all(40),
              color: Colors.amber,
              child: Text("three"),
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