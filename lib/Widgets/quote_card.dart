import 'package:flutter/material.dart';
import 'package:fr_piscadev_reminder/models/quote.dart';

//# Widget QuoteCard extracted from the function
class QuoteCard extends StatelessWidget {

  //? Should me final as it's not possible to have dynamical variable since it is stateless idget ?
  late Quote quote;
  Function delete; // note final late ? but wtf ?
  
  QuoteCard({required this.quote, required this.delete});

  // const QuoteCard({
  //   Key? key,
  // }) : super(key: key);


  @override
  Widget build(BuildContext context) {
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
                        SizedBox(
              height: 8.0,
            ),
            TextButton.icon(
              onPressed: () {
                delete();
              }, 
              icon: Icon(Icons.delete), 
              label:  const Text("Delete quote")
              )
          ],
        ),
      ),
    );
  }
}