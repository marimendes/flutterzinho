import 'dart:math';

import 'transaction_form.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

import 'package:flutter/material.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {

    final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tênis',
      value: 310.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Nova mochila',
      value: 100.00,
      date: DateTime.now(),
    ),
  ];

  _addTransaction(String title, double value){
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionList(_transactions),
        TransactionForm(_addTransaction),
      ],
    );
  }
}