import 'package:http/http.dart';
import 'dart:convert'; // to user jsonDecode

class WorldTime {
  String location; // location name for the UI
  String? time; // time in that location
  String flag; // url to an asset flag icon
  String url; // location url for api endpoint

  //? this or late ?

  WorldTime(
      {required this.location,
      this.time,
      required this.flag,
      required this.url});

  //# with http
  // void getTime() async { // make it futur to user "await" in front of the methode
  Future<void> getTime() async {
    try {
      // make the request
      var uri = Uri.parse('http://worldtimeapi.org/api/timezone/$url');
      Response resp = await get(uri);
      Map date_london = jsonDecode(resp.body);

      String datetime = date_london['datetime'];
      String offset = date_london['utc_offset'].substring(1, 3);

      // print(datetime);
      // print(offset);

      // create a DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      // set time property. getter ?
      time = now.toString();
    } catch (e) {
      print('caught error : $e');

      // Mettre à jour l'erreur dans la variable !
      time = 'could not get time data';
    }
  }
}
