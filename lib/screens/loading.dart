import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fr_piscadev_reminder/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'Loading';

  void setupWorldTime() async {
      WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
      
      // instance.getTime(); to be able to write await in front of it, must be Future type:
      await instance.getTime(); // await knows when it's finished thanks to Future

      // // we could also pass the object rather than map
      Navigator.pushReplacementNamed(context, '/home', arguments: {
        'location': instance.location,
        'flag': instance.flag,
        'time': instance.time,
        'isDayTime': instance.isDayTime
      });

      // we could also pass the object rather than map
      // but no 'cause pushReplacementName remove this page, so the update.
      // Navigator.pushReplacementNamed(context, '/home', arguments: {
      //   instance
      // });


  }


  @override
  void initState() {
    super.initState(); 
    setupWorldTime();

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: 
      Scaffold(
        backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitFadingCircle(
        color: Colors.white,
        size: 50.0,
      )

      )
    ));
  }
}