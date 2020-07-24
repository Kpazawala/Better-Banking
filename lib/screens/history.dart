import 'package:flutter/material.dart';
import 'feed.dart';
import 'info.dart';

class history extends StatefulWidget {
  @override
  _historyState createState() => _historyState();
}

class _historyState extends State<history> {
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
          'History',
          style: TextStyle(
            fontSize: 22.5,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: historyList()
        ),
      ),
    );
  }
}

class historyList extends StatefulWidget {
  @override
  _historyListState createState() => _historyListState();
}

class _historyListState extends State<historyList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 10,
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
            margin: const EdgeInsets.only(top: 15.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        Month[DateTime.now().month - 1],
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        '$Date,',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        '$Year',
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
                        margin: const EdgeInsets.only(left: 20, right: 20.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                            hintText: 'Average',
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
        );
      },
    );
  }
}