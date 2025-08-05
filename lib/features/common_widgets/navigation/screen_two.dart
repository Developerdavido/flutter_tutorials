import 'package:flutter/material.dart';


class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Screen Two", style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),),
          ElevatedButton(onPressed: (){}, child: Text("Move Screen"), )
        ],
      ),
    );
  }
}
