import 'package:flutter/material.dart';

import '../components/custom_widgets.dart';

class ListItems extends StatefulWidget {
  const ListItems({super.key});

  @override
  State<ListItems> createState() => _ListItemsState();
}

class _ListItemsState extends State<ListItems> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 11, 88, 126),
        title: const Text("My Stock"),
      ),
      body: Container(
        margin: const EdgeInsets.all(5.0),
        child: Container(),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: FloatingActionButton.extended(
          onPressed: () {
            buttomSheet(context, screenSize);
          },
          backgroundColor: const Color.fromARGB(255, 11, 88, 126),
          icon: const Icon(Icons.add),
          label: const Text("Add Item"),
        ),
      ),
    );
  }
}
