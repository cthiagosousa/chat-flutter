import 'package:flutter/material.dart';
import 'package:chat/components/chat_item_widget.dart';

class ChatListScreen extends StatelessWidget {
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
          padding: const EdgeInsets.only(top: 20),
          child: ListView(
            children: [
              ChatItemWidget(
                title: "Conversa 1",
                chat:
                    "Text text text text text text text text text text text text text text text text text text text text text ",
                profileIcon: "TS",
              ),
              ChatItemWidget(
                title: "Conversa 2",
                chat:
                    "Text text text text text text text text text text text text text text text text text text text text text ",
                profileIcon: "CT",
              ),
            ],
          ),
        ));
  }
}
