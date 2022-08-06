import 'package:flutter/material.dart';
import '../services/world_time.dart';


class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupworldTime() async{
    WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home',arguments: {
      'location': instance.location,
      'flag':instance.flag,
      'time':instance.time
      });
    }
  

  @override
  void initState() {
    super.initState();
    setupworldTime();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(30),child: Text("Loading.."),)
    );
  }
}