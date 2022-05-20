import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

//# State object
  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<String> quotes = [
    'Gare Thiers',
    'Parking Carnot',
    'Parking Léoplold'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),

      body: Column(

        //! Important
        //# list view or : map : for each  item, perform a function  (():function {} )

        children: 
        // quotes.map((quote) {
        //   return Text(quote);
        // }).toList(), //# toList : turn into an interable list

        //# autre syntax,on remplace le {} par => :

        quotes.map((quote) => Text(quote)).toList(), // children : toList()
      )
    );
  }
}