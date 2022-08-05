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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Hello World"),
            ElevatedButton(
              onPressed: () {}, 
              style: ElevatedButton.styleFrom(
                primary: Colors.amber
              ), child: const Text("Click me"),
            ),
            Container(
              color: Colors.cyan,
              padding: EdgeInsets.all(30),
              child: Text("Inside Container"),
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