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
    //# Si vide, on reçoit les data de "loading". Sinon de la selection.
    //# Lors de la selection, data est rempli. Le ternaire permet que la variable
    //# ne soit pas réécrite avec les data venant du loading à chaque build
    data = data.isNotEmpty ? data : ModalRoute.of(context)!.settings.arguments as Map;
    print(data);
    bool isDayTime = data['isDayTime'];
    // print(data['isDayTime'].runtimeType);
    // print(isDayTime.runtimeType);

    // set background
    // night test
    String bgImage = isDayTime ? 'day.png' : 'night.png';
    
    Color? bgColor = isDayTime ? Colors.blue : Colors.indigo[700];

    return Scaffold(
      // background affectant l'arrière de la barre en haut
      backgroundColor: bgColor,
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

                  //#  Fonction asynchrone, permettant d'utiliser le "await instance.getTime"
                  //# dans choose_location.
                  //# Dynamic car on ne sait pas quelles données arrivent.
                  //# on met à jour les data avec setState
                  onPressed: () async {
                    // ne pas oublier le await !! sinon il s'en fout, les data restent vide
                    dynamic result = await Navigator.pushNamed(context, '/location');
                    print("smt");
                    setState(() {
                      data = {
                        'time': result['time'],
                        'location': result['location'],
                        'isDayTime': result['isDayTime']
                      };
                      print('home : ${data['location']}');
                    });
                  }, 
                  icon: Icon(
                    Icons.edit_location,
                    color: Colors.grey[300]
                    ), 
                  label: Text(
                    'Edit Location',
                    style: TextStyle(
                      color: Colors.grey[300],
                    )),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        data['location'],
                        style: TextStyle(
                          fontSize: 28.0,
                          letterSpacing: 2.0,
                          color: Colors.white
                         )),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    data['time'],
                    style: TextStyle(
                      fontSize: 54.0,
                      color: Colors.white
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