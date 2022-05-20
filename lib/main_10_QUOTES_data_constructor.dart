import 'package:flutter/material.dart';
import 'package:fr_piscadev_reminder/models/quote.dart';

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

  List<Quote> quotes = [
    Quote(author: "Max", text: "Flutter's constructor are not bad"),
    Quote(author: "Nancy", text: "I wan't that app quickly and cheap"),
    Quote(author: "Dupond", text: "I have nothing to say exepct what I just said"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      appBar: AppBar(
        title: const Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),

      body: Column(

        children: 

        quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(), //# {} because . : var.prop
      )
    );
  }
}