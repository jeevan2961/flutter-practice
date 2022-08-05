// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp (home: NinjaCard()));
}

class NinjaCard extends StatelessWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text("Ninja ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images.jpeg'),
                radius: 40,
              ),
            ),
            Divider(
              height: 80,
              color: Colors.green,
            ),
            Text(
              "NAME",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2
              ),
            ),
            SizedBox(height: 10),
            Text(
              "CHONG-LE",
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 2
              ),
            ),
            SizedBox(height: 30),
                       Text(
              "NINJA LEVEL",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2
              ),
            ),
            SizedBox(height: 10),
            Text(
              "8",
              style: TextStyle(
                color: Colors.amberAccent,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 2
              ),
            ),
            SizedBox(height: 30),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 10),
                Text(
                  "Chongle@gmail.com",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    letterSpacing: 1
                  ),
                  )
              ],
            )
          ]
          ),
      ),
    );
  }
}