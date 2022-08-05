import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function() delete;
  // ignore: use_key_in_widget_constructors
  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600] 
                ),
            ),
            SizedBox(height: 6),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[800]
                ),
            ),
            SizedBox(height: 8,),
            ElevatedButton.icon(
              onPressed: delete,
              label: const Text("Delete Quote"),
              icon: const Icon(Icons.delete))
          ]
          ),
      ),
      );
  }
}