import 'package:flutter/material.dart';
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
      print(instance.time);

      // mettre à jour time
      setState(() {
        time = instance.time!;
      });

  }


  @override
  void initState() {
    super.initState(); 
    setupWorldTime();

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text(time) // could be replaced with a circular icone.
      ),
    ));
  }
}