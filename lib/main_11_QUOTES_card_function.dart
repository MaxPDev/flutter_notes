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

  //# Créer une fonction qui retourne un template, prend un quote en param, utilise Card
  //? Type return could be Card ?
  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text, //# No need to ${} because we don't output text here
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              quote.author, 
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
                // letterSpacing: 3.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
//# Plutôt que créer cette fonction, on peut créer le widget correspondant. Exctrating Widgets.


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

        quotes.map((quote) => quoteTemplate(quote)).toList(), //# {} because . : var.prop
      )
    );
  }
}