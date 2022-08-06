import 'package:http/http.dart';
import 'dart:convert';

class WorldTime{
  String location; //location name in the UI
  String time = ""; // time in that location
  String flag; //url to asset flag url
  String url; //location url

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async{
    Response response = await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
    Map data = jsonDecode(response.body);

    // get properties from data
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);
    // create datetime object
    DateTime now =DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    // set the time property
    time = now.toString();
  }

}

