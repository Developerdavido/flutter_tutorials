import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            height: 24,
            width: double.infinity,
            color: Colors.yellow,
            child: Text("1", style: TextStyle(color: Colors.black)),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            height: 24,
            width: double.infinity,
            color: Colors.yellow,
            child: Text("2", style: TextStyle(color: Colors.black)),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            height: 24,
            width: double.infinity,
            color: Colors.yellow,
            child: Text("3", style: TextStyle(color: Colors.black)),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            height: 24,
            width: double.infinity,
            color: Colors.yellow,
            child: Text("4", style: TextStyle(color: Colors.black)),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            height: 24,
            width: double.infinity,
            color: Colors.yellow,
            child: Text("5", style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }
}
