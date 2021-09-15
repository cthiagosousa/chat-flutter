import 'package:flutter/material.dart';

class ChatInputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      color: theme.accentColor,
      child: Container(
        height: 50,
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: TextField(
                style: theme.textTheme.bodyText2,
                cursorColor: theme.accentColor,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.send_rounded,
                color: theme.accentIconTheme.color,
                size: theme.iconTheme.size,
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
