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

    // set background
    String bgImage = data['isDaytime'] ? 'day.png' : 'night.png';

    return Scaffold(
      body: SafeArea(
        child: Container(
          // backgournd image
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$bgImage'),
              fit: BoxFit.cover
            )
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
            child: Column(
              children: [
                TextButton.icon(
                  onPressed: (() {
                    Navigator.pushNamed(context, '/location');
                  }), 
                  icon: Icon(Icons.edit_location), 
                  label: Text('Edit Location'),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        data['location'],
                        style: TextStyle(
                          fontSize: 28.0,
                          letterSpacing: 2.0
                         )),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    data['time'],
                    style: TextStyle(
                      fontSize: 54.0
                    )
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}