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
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 6,
            child: Image.asset('assets/piet1.jpg'),
            ),

          //# Expanded take all the place left over
          //# with flex : proportion
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.cyan,
              child: Text('1'),
            ),
          ),
          Expanded(
            flex:2,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.pinkAccent,
              child: Text('2'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.amber,
              child: Text('3'),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {print('Clicked !');},
        child: Text('Click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
