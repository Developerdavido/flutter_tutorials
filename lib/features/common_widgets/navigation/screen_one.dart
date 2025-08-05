import 'package:flutter/material.dart';



class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Screen One", style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),),
          ElevatedButton(onPressed: (){}, child: Text("Move Screen"), )
        ],
      ),
    );
  }
}
