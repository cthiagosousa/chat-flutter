import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).iconTheme.color,
            size: Theme.of(context).iconTheme.size,
          ),
          splashRadius: Theme.of(context).iconTheme.size,
          onPressed: () => Navigator.pop(context),
        ),
        leadingWidth: Theme.of(context).iconTheme.size,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: Text(
                arguments["profileIcon"],
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            SizedBox(width: 10),
            Text(
              arguments["title"],
              style: Theme.of(context).textTheme.headline3,
            )
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(),
            TextField(),
          ],
        ),
      ),
    );
  }
}
