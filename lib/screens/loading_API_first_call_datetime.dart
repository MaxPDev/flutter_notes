import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert'; // to user jsonDecode


class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

//# with http
  void getTime() async {

    // make the request
    var uri_london =  Uri.parse('http://worldtimeapi.org/api/timezone/Europe/London');
    Response resp = await get(uri_london);
    Map date_london = jsonDecode(resp.body);

    // print(data_london);

    String datetime = date_london['datetime'];
    String offset = date_london['utc_offset'].substring(1,3);

    print(datetime);
    print(offset);

    // create a DateTime object
    DateTime now = DateTime.parse(datetime);

    // It's not destructive, so now =
    now = now.add(Duration(hours: int.parse(offset)));
    print(now);
    
  }

  @override
  void initState() {
    super.initState(); 
    getTime();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text("loading")),
    );
  }
}