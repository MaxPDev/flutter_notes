import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  // int counter = 0;

  //! DATA 
  void getData() async {

    //# async permet qu'avec await, ça wait avant la prochaine requête/instruction ?

    // simulate network request for a username (delayed)
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'yoshi';
    });

    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'fais des trucs';
    });

    print('statement');

    print('$username - $bio');


  }

  @override
  void initState() {
    super.initState();
    
    getData();
    print('initState function ran');

  }


  @override
  Widget build(BuildContext context) {
    print('build function ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],

      // Add automatically a back arrow
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose location'),
        centerTitle: true,
        elevation: 0,
      ),






      // body: ElevatedButton(
      //   onPressed: () {
      //     setState(() {
      //       counter += 1;
      //     });
      //   },
      //   child: Text('counter is $counter'),
      // ),

    );
  }
}