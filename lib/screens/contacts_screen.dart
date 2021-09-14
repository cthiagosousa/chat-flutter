import 'package:chat/components/contact_item_widget.dart';
import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 20),
        child: ListView(
          children: [
            ContactItemWidget(
              profileIcon: "TS",
              name: "Thiago",
            ),
          ],
        ),
      ),
    );
  }
}
