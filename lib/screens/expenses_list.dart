import 'package:better_banking/authentication/expensesData.dart';
import 'package:better_banking/authentication/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class expList extends StatefulWidget {
  @override
  _expListState createState() => _expListState();
}

class _expListState extends State<expList> {

  String _currentEntertainment;
  String _currentRoomBoard;
  String _currentTaxes;
  String _currentLoans;

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    final _formKey = GlobalKey<FormState>();
    /*
    expenses.forEach((expenses) {
      print(expenses.entertainment);
      print(expenses.roomboard);
    });
    */
    var txt = TextEditingController();


    return StreamBuilder<UserExpData>(
      stream: ExpensesDatabase(uid: user.uid ).userExpData,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          UserExpData userData = snapshot.data;
          return Form(
            key: _formKey,
            child: ListView(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 15.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(left: 30.0),
                            child: Text(
                              'Entertainment',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 15.0),
                            height: 22.5,
                            width: 2,
                            child: VerticalDivider(
                              color: Colors.black,
                              thickness: 1,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(
                                  left: 20, right: 20.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: TextFormField(
                                initialValue: userData.entertainment,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(
                                      20.0, 0.0, 20.0, 0.0),
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                ),
                                onChanged: (val) {
                                  _currentEntertainment = val;
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10.0),
                        width: 375,
                        child: Divider(
                          color: Colors.black,
                          thickness: 0.7,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(left: 30.0),
                            child: Text(
                              'Room & Board',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 15.0),
                            height: 22.5,
                            width: 2,
                            child: VerticalDivider(
                              color: Colors.black,
                              thickness: 1,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(
                                  left: 20, right: 20.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: TextFormField(
                                initialValue: userData.roomboard,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(
                                      20.0, 0.0, 20.0, 0.0),
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                ),
                                onChanged: (val) {
                                  _currentRoomBoard = val;
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10.0),
                        width: 375,
                        child: Divider(
                          color: Colors.black,
                          thickness: 0.7,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(left: 30.0),
                            child: Text(
                              'Taxes ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 15.0),
                            height: 22.5,
                            width: 2,
                            child: VerticalDivider(
                              color: Colors.black,
                              thickness: 1,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(
                                  left: 20, right: 20.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: TextFormField(
                                initialValue: userData.taxes,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(
                                      20.0, 0.0, 20.0, 0.0),
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                ),
                                onChanged: (val) {
                                  _currentTaxes = val;
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10.0),
                        width: 375,
                        child: Divider(
                          color: Colors.black,
                          thickness: 0.7,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(left: 30.0),
                            child: Text(
                              'Loans',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 15.0),
                            height: 22.5,
                            width: 2,
                            child: VerticalDivider(
                              color: Colors.black,
                              thickness: 1,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(
                                  left: 20, right: 20.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: TextFormField(
                                initialValue: userData.loans,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(
                                      20.0, 0.0, 20.0, 0.0),
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                ),
                                onChanged: (val) {
                                  _currentLoans = val;
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10.0),
                        width: 375,
                        child: Divider(
                          color: Colors.black,
                          thickness: 0.7,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.black,
                  margin: const EdgeInsets.only(top: 15.0),
                  child: MaterialButton(
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    onPressed: () async {
                      if(_formKey.currentState.validate()){
                        await ExpensesDatabase(uid: user.uid).updateUserData(
                          _currentEntertainment ?? userData.entertainment,
                          _currentRoomBoard ?? userData.roomboard,
                          _currentTaxes ?? userData.taxes,
                          _currentLoans ?? userData.loans,
                        );
                      }
                      print(_currentEntertainment);
                      print(_currentRoomBoard);
                      print(_currentTaxes);
                      print(_currentLoans);
                      print(user.uid);
                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        else if (snapshot.data != null && !snapshot.hasError) {
          return Text('No data avaible right now');
        }
      }
    );
  }
}
