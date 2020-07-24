import 'package:flutter/material.dart';
import 'info.dart';

import 'package:flutter/services.dart';

List<String> Month = [
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December',
];

List<String> Day = [
  'Monday',
  'Tuesday',
  'Wednesday',
  'Thursday',
  'Friday',
  'Saturday',
  'Sunday',
];
int Date =  DateTime.now().day;
int Year = DateTime.now().year;


class Feed extends StatefulWidget {
  final int feedAmount;
  int average;
  Feed({this.feedAmount, this.average});

  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {

  var txt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: widget.feedAmount,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => dayInfo()
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(right: 25),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(left: 20.0),
                        width: 110,
                        height: 110,
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
                              margin: const EdgeInsets.only(bottom: 5.0),
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.only(left: 15, bottom: 10),
                                child: Text(
                                  Day[DateTime.now().weekday - 1],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 15),
                            width: 210,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              border: Border.all(width: 3),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Container(
                              margin: const EdgeInsets.only(left: 15),
                              child: TextFormField(
                                controller: txt,
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  WhitelistingTextInputFormatter.digitsOnly
                                ],
                                decoration: InputDecoration(
                                  hintText: 'Average',
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  suffixIcon: Icon(
                                    Icons.lock,
                                    color: Colors.black,
                                    size: 22,
                                  ),
                                ),
                                onTap:() {
                                  txt.text = widget.average.toString();
                                },
                              ),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.only(top: 10, left: 15),
                                width: 60,
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
                                        'B:',
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
                                width: 60,
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
                                        'L:',
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
                                width: 60,
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
                                        'D:',
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
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    width: 375,
                    child: Divider(
                      color: Colors.black,
                      thickness: 0.7,
                    ),
                  ),
                ],
              ),
            ),
        );
      },
    );
  }
}
