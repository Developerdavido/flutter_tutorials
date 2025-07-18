import 'package:flutter/material.dart';

List contacts = ['Bob', 'Mike', 'Jay', 'John'];

class SeperatedListview extends StatelessWidget {
  const SeperatedListview({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      // body: ListView.separated(
      //   itemBuilder: (context, index) {
      //     return Container(
      //       margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      //       alignment: Alignment.center,
      //       height: 100,
      //       width: double.infinity,
      //       color: Colors.yellow,
      //       child: Text("${index + 1}", style: TextStyle(color: Colors.black)),
      //     );
      //   },
      //   separatorBuilder: (context, separatorIndex) {
      //     return Divider(color: Colors.cyanAccent);
      //   },
      //   itemCount: 200,
      // ),
      appBar: AppBar(title: Text('Contacts')),
      body: Builder(
        builder:
            (context) => ListView.separated(
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(child: Text(contacts[index][0]),),
                  title: Text(
                    contacts[index],
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Tapped at index $index',
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    );
                  }
                );
              },
              separatorBuilder: (context, index) {
                return Divider(color: Colors.blueGrey, thickness: 3,);
              },
            ),

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
