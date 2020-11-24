import 'package:flutter/material.dart';

import '../components/new_transaction.dart';
import '../components/transaction_list.dart';

import '../models/transaction.dart';

class TransactionModule extends StatefulWidget {
  @override
  _TransactionModuleState createState() => _TransactionModuleState();
}

class _TransactionModuleState extends State<TransactionModule> {
  final List<Transaction> transactions = [
    Transaction(
        id: 't1', title: "New Shoes", amount: 97.99, date: DateTime.now()),
    Transaction(
        id: 't2', title: "New Book", amount: 24.99, date: DateTime.now()),
  ];

  void _didTapAddTransaction(Transaction transaction) {
    print("Transaction added!");

    setState(() {
      transactions.add(transaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          NewTransaction(
            didTapAddTransaction: _didTapAddTransaction,
          ),
          TransactionList(transactions: transactions)
        ],
      ),
    );
  }
}
