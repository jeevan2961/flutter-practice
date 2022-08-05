import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  int counter=0;

  void getData() async{
    // Simuate network request for a username
    String name = await Future.delayed(Duration(seconds: 3),() {
      return "yoshi";
    });

    // Simuate network request for a bio
    String bio = await Future.delayed(Duration(seconds: 2),() {
      return "this is the bio";
    });

    print("$name - $bio");
  }

  @override
  void initState() {
    super.initState();
    getData();
    print("Hello there!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Choose a location"),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(
        onPressed: () {
          setState(() {
            counter +=1;
          });
        },
        child: Text('counter is $counter'),),
    );
  }
}