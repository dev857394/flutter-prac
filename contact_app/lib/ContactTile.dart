import 'package:flutter/material.dart';

class ContactTile extends StatelessWidget {
  const ContactTile(
      {super.key,
      required this.name,
      required this.phone,
      required this.imgUrl});

  final String name;
  final String phone;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      subtitle: Text(
        phone,
        style: TextStyle(color: Colors.blue),
      ),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imgUrl),
      ),
      trailing: Icon(Icons.call),
    );
  }
}
