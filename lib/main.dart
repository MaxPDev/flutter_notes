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
      body: Column(
        children: [
          Center(
              child: Icon(
            Icons.airport_shuttle,
            color: Colors.lightBlue,
            size: 50.0,
          )
          ),

          //# on peut faire un ElevatedButton ou ElevatedButton.icon, idem avec TextButton
          ElevatedButton.icon(
            onPressed: () {print('elevated button'); print('add circle');}, 
            icon: Icon(Icons.add_circle),
            label: Text('add something (elevated)'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 37, 197, 45)),
              elevation: MaterialStateProperty.all<double>(14.0),
              ),
            // style: ButtonStyle()

            ),
          TextButton.icon(
            onPressed: () {print('Email me');}, 
            icon: Icon(Icons.mail), 
            label: Text("Email me (textbutton)"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 149, 33, 243))
            )
            ),
            IconButton(
              onPressed: () {print('IconButton pressed dude');}, 
              icon: Icon(Icons.park_outlined),
              color: Colors.amber
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
