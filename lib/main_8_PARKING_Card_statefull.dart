import 'package:flutter/material.dart';
import 'package:fr_piscadev_reminder/constant_test_to_fetch.dart';

void main() {
  runApp(const MaterialApp(
    home: ParkingCard(),
  ));
}

//# widget
class ParkingCard extends StatefulWidget {
  const ParkingCard({Key? key}) : super(key: key);

  @override
  State<ParkingCard> createState() => _ParkingCardState();
}

//# datas output of the widget. Has the build part
class _ParkingCardState extends State<ParkingCard> {
  int parkingPlaces = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text(titre),
        centerTitle: true,
        backgroundColor: Colors.grey[850],

        //# Shadow
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: InkResponse(
                onTap: () {
                  print('Gare Thiers');
                },
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/parkingThiers.jpg'),
                  radius: 40.0,
                ),
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey[800],
            ),
            const Text(parkingTitle,
                style: TextStyle(
                  color: titleColor,
                  letterSpacing: letterSpaceName,
                )),
            const SizedBox(
              height: 10.0,
            ),
            const Text(pkg1Name,
                style: TextStyle(
                    color: dataColor,
                    letterSpacing: letterSpaceName,
                    fontSize: datafontSize,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 30.0,
            ),
            const Text(horaireTitle,
                style: TextStyle(
                  color: titleColor,
                  letterSpacing: letterSpaceName,
                )),
            const SizedBox(
              height: 10.0,
            ),
            const Text(horaire1,
                style: TextStyle(
                    color: dataColor,
                    letterSpacing: letterSpaceName,
                    fontSize: datafontSize,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.local_parking_rounded,
                  color: Colors.grey[400],
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  '$parkingPlaces $placeText',
                  style: TextStyle(
                      color: Colors.green[400],
                      fontSize: placeFontSize,
                      letterSpacing: placeLetterSpacing),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          //# re build. So new state.
          setState(() {
            parkingPlaces++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
        // mini: true
      ) ,
    );
  }
}
