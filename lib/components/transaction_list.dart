import 'package:expense_tracker/components/transaction_card.dart';
import 'package:flutter/material.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList({this.transactions});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ...transactions.map((transaction) {
            return TransactionCard(transaction);
          }).toList()
        ],
      ),
    );
  }
}
