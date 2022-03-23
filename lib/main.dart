import 'package:flutter/material.dart';
import 'package:flutter_shopping_list/pages/page.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => HomePage(),
        '/item' : (context) => ItemPage(),
      },
    )
  );
}

