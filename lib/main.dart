import 'package:flutter/material.dart';
import 'package:fr_piscadev_reminder/screens/choose_location.dart';
import 'package:fr_piscadev_reminder/screens/home.dart';
import 'package:fr_piscadev_reminder/screens/loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      //# context : keep where we are
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': ((context) => ChooseLocation())
    },
  ));
}
