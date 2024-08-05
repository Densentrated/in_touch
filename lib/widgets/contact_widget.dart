import 'package:flutter/material.dart';
import '../util/contact.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key, required this.contact});
  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 130.0,
        child: Container(color: Colors.pink, child: Text(contact.name)));
  }
}
