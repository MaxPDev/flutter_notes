import 'package:flutter/material.dart';
import 'package:fr_piscadev_reminder/constant_test_to_fetch.dart';

void main() {
  runApp(MaterialApp(
    home: ParkingCard(),
  ));
}

class ParkingCard extends StatelessWidget {
  const ParkingCard({Key? key}) : super(key: key);

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
            padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
            child: Column(
              children: <Widget>[
                Text(pkgName,
                    style: TextStyle(
                      color: pkgColor,
                      letterSpacing: pkgLetterSpaceName,
                    )),
                Text(pkg1Name,
                    style: TextStyle(
                      color: pkg1Color,
                      letterSpacing: pkgLetterSpaceName,
                    )),
              ],
            )));
  }
}
