import 'package:flutter/material.dart';
import 'feed.dart';

class dayInfo extends StatefulWidget {
  @override
  _dayInfoState createState() => _dayInfoState();
}

class _dayInfoState extends State<dayInfo> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,//Colors.grey[200],

      appBar: AppBar(
        backgroundColor: Colors.deepPurple[800],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
        ),
        title: Text(
          Day[DateTime.now().weekday - 1],
          style: TextStyle(
            fontSize: 22.5,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(left: 20.0),
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(width: 3),
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(bottom: 10.0),
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border(
                              bottom: BorderSide(width: 2),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              Month[DateTime.now().month - 1],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            '$Date',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 45.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 5, right: 30),
                      height: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(left: 15),
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border(
                                bottom: BorderSide(width: 2),
                              ),
                            ),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Breakfast:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17.5,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 5),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10, left: 15),
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border(
                                bottom: BorderSide(width: 2),
                              ),
                            ),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Lunch:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17.5,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 5),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10, left: 15),
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border(
                                bottom: BorderSide(width: 2),
                              ),
                            ),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Dinner:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17.5,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 5),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 25),
                      width: 170,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border(
                          bottom: BorderSide(width: 2),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Text(
                              'Snacks:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.5,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      width: 170,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border(
                          bottom: BorderSide(width: 2),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Text(
                              'Other:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.5,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                width: 375,
                child: Divider(
                  height: 20,
                  color: Colors.deepPurple[800],
                  thickness: 2.2,
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 25, right: 25, top: 20),
                        height: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border(
                            bottom: BorderSide(width: 2),
                          ),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Text(
                                'Notes:',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17.5,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.only(left: 5),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 35, left: 20, right: 25),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 3),
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    hintText: 'Daily Average',
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
