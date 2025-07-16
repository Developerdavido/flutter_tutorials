import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: ListView.builder(
        itemCount: 200,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            alignment: Alignment.center,
            height: 100,
            width: double.infinity,
            color: Colors.yellow,
            child: Text("${index + 1}", style: TextStyle(color: Colors.black)),
          );
        },
      ),
    );
  }
}
