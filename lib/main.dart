import 'package:bytebank_contatos/database/app_database.dart';
import 'package:bytebank_contatos/screens/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BytebankApp());
  findAll().then(
    (contacts) => debugPrint(contacts.toString()),
  );
}

class BytebankApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.green[900],
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.green[900],
          ),
        ),
      ),
      home: Dashboard(),
    );
  }
}
