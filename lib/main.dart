import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
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

      //# to container other widget. Take size of widget inside, full size if empty
      body: Column(
        children: [
          Container(
            // padding: EdgeInsets.all(20.0),
            // padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
            margin: EdgeInsets.all(30.0),
            //# background color
            color: Colors.grey[400],
            child: Text('Hello'),
          ),

          //# Like Container, without need of margin or color
          Padding(
            padding: EdgeInsets.all(90.0),
            child: Text('Hello'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Clickaa'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
