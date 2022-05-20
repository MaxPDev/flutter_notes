import 'package:flutter/material.dart';
import 'package:fr_piscadev_reminder/models/quote.dart';
import 'package:fr_piscadev_reminder/Widgets/quote_card.dart';

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
  // Widget quoteTemplate(quote){
  //   return QuoteCard(quote: quote);
  // }
//# Plutôt que créer cette fonction, on peut créer le widget correspondant. Exctrating Widgets.
//# No more usefull : use Widget instead

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

        quotes.map((quote) => QuoteCard(quote: quote)).toList(), //# {} because . : var.prop
      )
    );
  }
}

