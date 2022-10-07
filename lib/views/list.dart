import 'package:flutter/material.dart';

class ListItems extends StatefulWidget {
  const ListItems({super.key});

  @override
  State<ListItems> createState() => _ListItemsState();
}

class _ListItemsState extends State<ListItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 11, 88, 126),
        title: const Text("List View"),
      ),
      body: Container(
        color: Colors.green,
        margin: const EdgeInsets.all(15.0),
        child: Container(),
      ),
    );
  }
}
