import 'package:expense_tracker/models/transaction.dart';
import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final TextEditingController itemNameInputController = TextEditingController();
  final TextEditingController itemPriceInputController =
      TextEditingController();
  final Function didTapAddTransaction;

  NewTransaction({this.didTapAddTransaction});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
          child: Column(
        children: [
          TextField(
            autofocus: true,
            decoration: InputDecoration(
                hintText: "Item Name", contentPadding: EdgeInsets.all(8)),
            controller: itemNameInputController,
          ),
          TextField(
            autofocus: true,
            decoration: InputDecoration(
                hintText: "Item Price", contentPadding: EdgeInsets.all(8)),
            controller: itemPriceInputController,
          ),
          Container(
            alignment: Alignment.centerRight,
            child: FlatButton(
                onPressed: () {
                  final transaction = Transaction(
                      id: DateTime.now().toString(),
                      title: itemNameInputController.text,
                      amount: double.parse(itemPriceInputController.text),
                      date: DateTime.now());

                  return didTapAddTransaction(transaction);
                },
                child: Text(
                  "Add Transaction",
                  style: TextStyle(color: Colors.purple),
                )),
          )
        ],
      )),
    );
  }
}
