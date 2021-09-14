import 'package:flutter/material.dart';

class ChatItemWidget extends StatelessWidget {
  final String title;
  final String chat;
  final String profileIcon;

  ChatItemWidget({
    required this.title,
    required this.chat,
    required this.profileIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 3),
      child: Dismissible(
        key: UniqueKey(),
        direction: DismissDirection.horizontal,
        background: Container(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.red,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Icon(
                  Icons.delete,
                  color: Colors.white,
                  size: Theme.of(context).iconTheme.size,
                ),
                SizedBox(width: 5),
                Text(
                  "Excluir",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
        ),
        child: Card(
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
              title,
              style: Theme.of(context).textTheme.headline4,
            ),
            subtitle: Text(
              chat,
              style: Theme.of(context).textTheme.bodyText2,
              overflow: TextOverflow.ellipsis,
            ),
            onTap: () => Navigator.pushNamed(context, 'chat/', arguments: {
              "title": title,
              "profileIcon": profileIcon,
            }),
          ),
        ),
      ),
    );
  }
}
