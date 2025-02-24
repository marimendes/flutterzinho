import 'package:flutter/material.dart';
import 'package:expenses/models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {

  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 300,
      child: transactions.isEmpty ? Column(
        children: <Widget>[
          Text(
            'Nenhuma transação cadastrada!',
            style: Theme.of(context).textTheme.title,
          ),
          SizedBox(height: 50),
          Container(
            height: 200,
            child: Image.asset(
              'assets/images/money.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ) : ListView.builder(
        itemCount: transactions. length,
        itemBuilder: (ctx, index){
          final tr = transactions[index];
          return Card(
            elevation: 5,
            margin: EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 5,
            ),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: FittedBox(
                    child: Text('R\$${tr.value}')
                  ),
                ),
              ),
              title: Text(
                tr.title,
                style: Theme.of(context).textTheme.title,
              ),
              subtitle: Text(
                DateFormat('d MMM y').format(tr.date),
              ),
            ),
          );
        },
      ),
    );
  }
}