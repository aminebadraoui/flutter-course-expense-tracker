import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionCard extends StatelessWidget {
  final Transaction transaction;

  TransactionCard(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
      child: Row(
        children: [
          Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8.0),
              child: Text(
                "${transaction.amount}",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.purple),
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                transaction.title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text(DateFormat.yMMMd().format(transaction.date)),
            ],
          )
        ],
      ),
    ));
  }
}
