import 'package:flutter/material.dart';

class ContactItemWidget extends StatelessWidget {
  final String name;
  final String profileIcon;

  ContactItemWidget({
    required this.name,
    required this.profileIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.3,
      child: ListTile(
        leading: CircleAvatar(
          child: Text(
            profileIcon,
            style: Theme.of(context).textTheme.headline3,
          ),
          backgroundColor: Theme.of(context).accentColor,
        ),
        title: Text(
          name,
          style: Theme.of(context).textTheme.headline5,
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.person,
            color: Theme.of(context).accentIconTheme.color,
            size: Theme.of(context).accentIconTheme.size,
          ),
          splashRadius: Theme.of(context).accentIconTheme.size,
          onPressed: () {},
        ),
      ),
    );
  }
}
