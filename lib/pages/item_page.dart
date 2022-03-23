import 'package:flutter/material.dart';
import 'package:flutter_shopping_list/models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Item itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(8),
        ),
      ),
    );
  }
}