import 'package:flutter/material.dart';
import 'auth.dart';
import 'user.dart';
import 'package:better_banking/screens/home.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = "";
  String password = "";
  final _formKey = GlobalKey<FormState>();
  Auth auth = Auth();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Container(
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 425,
                    child: Container(
                      margin: const EdgeInsets.only(top: 140.0),
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.account_balance, color: Colors.deepPurple[800], size: 150),
                          Container(
                            margin: const EdgeInsets.only(top: 30.0),
                            child: Text(
                              "Better Banking",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 40,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  TextFormField(
                    obscureText: false,
                    validator: (val) => val.isEmpty ? 'Enter an email' : null,
                    onChanged: (val) {
                      setState(() => email = val.trim());
                    },
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        hintText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0))),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    child: TextFormField(
                      obscureText: true,
                      validator: (val) =>
                      val.length < 6 ? 'Enter a password 6+ chars long' : null,
                      onChanged: (val) {
                        setState(() => password = val.trim());
                      },
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          hintText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32.0))),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.deepPurple[900],
                      child: MaterialButton(
                        minWidth: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        onPressed: () async {
                          if (_formKey.currentState.validate()) {
                            User user = await auth.loginUser(email, password);
                            print(user.uid);
                            print(user.email);

                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => Home()),
                            );
                          }

                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.deepPurple[900],
                      child: MaterialButton(
                        minWidth: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        onPressed: () async {
                          if (_formKey.currentState.validate()) {
                            User user = await auth.registerUser(email, password);
                            print(user.uid);
                            print(user.email);

                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => Home()),
                            );
                          }

                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
