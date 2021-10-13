
import 'package:flutter/cupertino.dart';
import 'quote_card.dart';
import 'quote.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: QuotesList(),
  ));
}

class QuotesList extends StatefulWidget {
  const QuotesList({Key key}) : super(key: key);

  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {

  List<Quote> quotes = [
    Quote(author: 'Oscar wilde',text: 'Be Yourself; Everyone is already taken.'),
    Quote(author: 'Oscar wilde',text: 'The truth is rarely pure and never simple!.'),
    Quote(author: 'Oscar wilde',text: 'Fuck Everybody!! No one is going to save you except you and prime source.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: (){
              setState(() {
                quotes.remove(quote);
              });
            }
        )).toList(),
      ),
    );
  }
}


