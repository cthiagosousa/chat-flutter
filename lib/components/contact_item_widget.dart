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
    final ThemeData theme = Theme.of(context);

    return Card(
      elevation: 0.3,
      child: ListTile(
        leading: CircleAvatar(
          child: Text(
            profileIcon,
            style: theme.textTheme.headline3,
          ),
          backgroundColor: theme.accentColor,
        ),
        title: Text(
          name,
          style: theme.textTheme.headline5,
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.person,
            color: theme.accentIconTheme.color,
            size: theme.accentIconTheme.size,
          ),
          splashRadius: theme.accentIconTheme.size,
          onPressed: () {},
        ),
      ),
    );
  }
}
