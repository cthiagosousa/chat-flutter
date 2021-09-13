import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget() : super(
    preferredSize: Size.fromHeight(100),
    child: Container(
      height: 100,
      color: Colors.blue[800],
      child: Center(
        child: Text("Appbar"),
      ),
    )
  );


}