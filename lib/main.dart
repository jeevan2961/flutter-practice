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
        body: Container(
          // padding: EdgeInsets.all(20.0),
          // padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 10.0),
          padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
          margin: EdgeInsets.all(30),
          color: Colors.grey[400],
          child: Text("hello"),
          ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.red,
          child: const Text("Press"),),
      );
  }
}