import 'package:flutter/material.dart';

class SeperatedListview extends StatelessWidget {
  const SeperatedListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: ListView.separated(
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
        separatorBuilder: (context, seperatorIndex) {
          return Divider(color: Colors.cyanAccent);
        },
        itemCount: 200,
      ),
    );
  }
}

///practice task for today
///Build a contact list,
/// Use a widget called ListTile
/// {title,
/// subtitle,
/// leading,
/// ending,
/// onTap
/// }
/// what you should do
/// 1. an avatar,
/// 2. a name,
/// 3. when tapped should showcase a snackbar that says you tapped on in the index of that contact
