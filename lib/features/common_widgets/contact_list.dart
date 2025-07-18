import 'package:flutter/material.dart';

class ContactListTile extends StatefulWidget {
  const ContactListTile({super.key});

  @override
  State<ContactListTile> createState() => _ContactListTileState();
}

class _ContactListTileState extends State<ContactListTile> {
  // ✅ Your contact list should be here, inside the State class
  final List<Map<String, String>> contacts = [
    {'name': 'John Doe', 'subtitle': '050 676 3333'},
    {'name': 'Jane Smith', 'subtitle': '024 676 7890'},
    {'name': 'Alice Johnson', 'subtitle': '054 555 8888'},
    {'name': 'Bernice', 'subtitle': '020 777 7900'},
    {'name': 'Agnes', 'subtitle': '020 888 9067'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        title: Text("Contact List"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];
          return ListTile(
            leading: CircleAvatar(child: Text(contact['name']![0])),
            title: Text(contact['name']!),
            subtitle: Text(contact['subtitle']!),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('You tapped on ${contact['name']}')),
              );
            },
          );
        },
      ),
    );
  }
}
