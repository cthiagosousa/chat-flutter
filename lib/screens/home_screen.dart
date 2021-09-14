import 'package:flutter/material.dart';
import 'package:chat/screens/chat_screen.dart';
import 'package:chat/screens/contacts_screen.dart';
import 'package:chat/components/app_bar_widget.dart';
import 'package:chat/components/tab_bar_widget.dart';
import 'package:chat/components/drawer_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final _tabController = TabController(length: 2, vsync: this);

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          title: Text(
            "WhatsChat",
            style: Theme.of(context).textTheme.headline1,
          ),
          centerTitle: true,
          toolbarHeight: 100,
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidget(height: 50),
          ),
        ),
        drawer: DrawerWidget(),
        body: Column(
          children: [
            TabBarWidget(tabController: _tabController),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  ChatScreen(),
                  ContactsScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
