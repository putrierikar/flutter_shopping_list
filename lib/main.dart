import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : ((context) => HomePage(),
        '/item' : (context) => ItemPage(),
      },
    )
  );
}

