import 'package:flutter/material.dart';
import 'package:fr_piscadev_reminder/services/world_time.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  Map data = {};

  @override
  Widget build(BuildContext context) {

    //# in build, because we need context"
    //# No need to use setState : it's the first execution.
    data = ModalRoute.of(context)!.settings.arguments as Map;
    print(data);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextButton.icon(
              onPressed: (() {
                Navigator.pushNamed(context, '/location');
              }), 
              icon: Icon(Icons.edit_location), 
              label: Text('Edit Location'),
              )
          ],
        ),
      ),
    );
  }
}