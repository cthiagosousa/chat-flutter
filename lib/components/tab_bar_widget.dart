import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  final TabController tabController;

  TabBarWidget({required this.tabController});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelStyle: Theme.of(context).textTheme.bodyText1,
      controller: tabController,
      indicatorColor: Colors.transparent,
      overlayColor: MaterialStateProperty.all(Theme.of(context).accentColor),
      tabs: [
        Tab(
          text: "Conversas",
        ),
        Tab(
          text: "Contatos",
        ),
      ],
    );
  }
}
