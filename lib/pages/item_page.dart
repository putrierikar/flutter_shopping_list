import 'package:flutter/material.dart';
import 'package:flutter_shopping_list/models/item.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({ Key? key }) : super(key: key);

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    final Item itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Text(itemArgs.name+ ' with ' +itemArgs.price.toString()),
        ),
      ),
    );
  }
}