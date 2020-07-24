import 'package:better_banking/authentication/user.dart';
import 'package:flutter/material.dart';
import 'package:better_banking/authentication/expensesData.dart';
import 'package:provider/provider.dart';
import 'expenses_list.dart';
import 'package:better_banking/authentication/expensesModel.dart';
import 'package:better_banking/authentication/auth.dart';


class Expenses extends StatefulWidget {
  @override
  _ExpensesState createState() => _ExpensesState();

}

class _ExpensesState extends State<Expenses> {

  var txt = TextEditingController();

  @override
  Widget build(BuildContext context) {


    return MultiProvider(
      providers: [
        StreamProvider<List<ExpensesModel>>.value(value: ExpensesDatabase().expenses),
        StreamProvider<User>.value(value: Auth().user),
      ],
      child: new Scaffold(
        backgroundColor: Colors.white,//Colors.grey[200],

        appBar: AppBar(
          backgroundColor: Colors.deepPurple[800],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(25),
            ),
          ),
          title: Text(
            'Monthly Expenses',
            style: TextStyle(
              fontSize: 22.5,
            ),
          ),
        ),
        body: expList(),
      ),
    );
  }
}
