import 'package:flutter/material.dart';
import 'package:better_banking/authentication/login.dart';
import 'screens/home.dart';
import 'screens/history.dart';
import 'screens/expenses.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  return runApp(
    MaterialApp(
      home: Login(),
      initialRoute: '/login',
      routes: {
        '/login': (context) => Login(),
        '/home': (context) => Home(),
        '/expenses': (context) => Expenses(),
        '/history': (context) => history(),
      },
    ),
  );
}





