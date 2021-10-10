import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
      home: Quotelist(),
    ));

class Quotelist extends StatefulWidget {
  @override
  _QuotelistState createState() => _QuotelistState();
}

class _QuotelistState extends State<Quotelist> {
  List<Quote> quotes = [
    Quote("author", "sfrr arial rela ur au erla"),
    Quote("author", "wef wefq we weio we oeawfi"),
    Quote("author", "sewfwa ew eea")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: Text('Awesome quates'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) {
          return QuoteCard(
            quote,
            () {
              setState(() {
                quotes.remove(quote);
              });
            },
          );
        }).toList(),
      ),
    );
  }
}
