import 'package:flutter/material.dart';
import 'feed.dart';
import 'history.dart';
import 'expenses.dart';

import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  int feedAmount = 7;
  int average;
  int intText;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String dropdownValue = '1 Week';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,//Colors.grey[200],

      endDrawer: navDrawer(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepPurple[800],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
        ),
        title: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 40,
                margin: const EdgeInsets.only(bottom: 10.0, right: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: DropdownButtonHideUnderline(
                        child: ButtonTheme(
                          alignedDropdown: true,
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            icon: Icon(Icons.arrow_drop_down, color: Colors.black,),
                            iconSize: 30,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            onChanged: (abValue) {
                              setState(() {
                                dropdownValue = abValue;
                              });
                              switch(abValue){
                                case "1 Week" : widget.feedAmount = 7;
                                break;
                                case "2 Weeks" : widget.feedAmount = 14;
                                break;
                                case "1 Month" : widget.feedAmount = 30;
                                break;
                              }
                              widget.average = (widget.intText/widget.feedAmount).round();
                              int pie = widget.average;
                              print('$pie');
                            },
                            items: <String>['1 Week', '2 Weeks', '1 Month']
                                .map<DropdownMenuItem<String>>((String aBvalue) {
                              return DropdownMenuItem<String>(
                                value: aBvalue,
                                child: Text(aBvalue),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: SizedBox(
                        height: 22.5,
                        width: 2,
                        child: VerticalDivider(
                          color: Colors.black,
                          thickness: 1,
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          WhitelistingTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          hintText: 'Enter Balance',
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                        onChanged: (text) {
                          setState(() {
                            widget.intText = int.parse('$text');
                            widget.average = (widget.intText/widget.feedAmount).round();
                            int pie = widget.average;
                            print('$pie');
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        actions: <Widget> [
          Builder(
            builder: (context) => Container(
              margin: const EdgeInsets.only(bottom: 10.0, right: 15),
              child: IconButton(
                icon: Icon(Icons.settings, color: Colors.black),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 80.0,
        decoration: BoxDecoration(
          color: Colors.deepPurple[800],
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25),
          ),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 35,
                margin: const EdgeInsets.only(left: 30.0, right: 15.0, bottom: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(width: 2),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: FlatButton(
                        textColor: Colors.black,
                        disabledColor: Colors.grey,
                        disabledTextColor: Colors.black,
                        splashColor: Colors.black12,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Expenses(),
                            ),
                          );
                        },
                        child: Text(
                          "Expenses",
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 15.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Saving',
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
            Container(
              margin: const EdgeInsets.only(bottom: 10.0, right: 25),
              child: IconButton(
                icon: Icon(Icons.history, color: Colors.black, size: 30),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => history(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),

      body: SafeArea(
        child: Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            child: Feed(feedAmount: widget.feedAmount, average: widget.average)
        ),
      ),
    );
  }
}

class navDrawer extends StatefulWidget {
  @override
  _navDrawerState createState() => _navDrawerState();
}
class _navDrawerState extends State<navDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 225,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Text(
                  'Better Banking',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.input, color: Colors.black),
              title: Text(
                'Logout',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              onTap: () => {
                Navigator.popAndPushNamed(context, '/login')
              },
            ),
            ListTile(
              leading: Icon(Icons.attach_money, color: Colors.black),
              title: Text(
                'Expenses',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              onTap: () => {
                Navigator.popAndPushNamed(context, '/expenses')
              },
            ),
            ListTile(
              leading: Icon(Icons.history, color: Colors.black),
              title: Text(
                'History',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              onTap: () => {
                Navigator.popAndPushNamed(context, '/history')
              },
            ),
          ],
        ),
      ),
    );
  }
}

