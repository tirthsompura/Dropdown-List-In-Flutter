import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> listOfFruits = [
    "Choose Fruit",
    "Apple",
    "banana",
    "Grapes",
    "Orange"
  ];
  String? selectedFruits = "Choose Fruit";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Dropdown Demo"),
      ),
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              elevation: 0,
              icon: const Icon(Icons.keyboard_arrow_down_outlined),
              value: selectedFruits,
              items: listOfFruits
                  .map(
                    (item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style:
                    const TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ).toList(),
              onChanged: (item) => setState(() => selectedFruits = item),
            ),
          ),
        ),
      ),
    );
  }
}
