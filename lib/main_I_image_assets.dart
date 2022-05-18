import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Home(),
    )
  );
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("App Test"),
      centerTitle: true,
      backgroundColor: Colors.red[600],
    ),
    body: Center(

      //# full styntax

      // child: Image(
      //   // image: NetworkImage('https://images.unsplash.com/photo-1546102426-08d5135b1046?ixlib=rb-1.2.1&raw_url=true&q=80&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764'),
      //   image: AssetImage('assets/piet2.jpg'),
      // ),

      //# shorter syntax
      child: Image.asset('assets/piet2.jpg')
      // or Image.network for url
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: Text('Clickaa'),
      backgroundColor: Colors.red[600],
    ),
   )
   ;
  }
}