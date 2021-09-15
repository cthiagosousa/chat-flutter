import 'package:flutter/material.dart';
import 'package:chat/components/chat_input_widget.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: theme.iconTheme.color,
            size: theme.iconTheme.size,
          ),
          splashRadius: theme.iconTheme.size,
          onPressed: () => Navigator.pop(context),
        ),
        leadingWidth: theme.iconTheme.size,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: Text(
                arguments["profileIcon"],
                style: theme.textTheme.headline5,
              ),
            ),
            SizedBox(width: 10),
            Text(
              arguments["title"],
              style: theme.textTheme.headline3,
            )
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: theme.backgroundColor,
              ),
            ),
            ChatInputWidget()
          ],
        ),
      ),
    );
  }
}
