import 'package:flutter/material.dart';

class DrawerButtonWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onTap;

  DrawerButtonWidget({required this.text, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(
          color: Theme.of(context).accentColor,
          width: 1,
        ),
      )),
      child: InkWell(
        splashColor: Theme.of(context).accentColor,
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          key: UniqueKey(),
          children: [
            Icon(
              icon,
              color: Theme.of(context).accentIconTheme.color,
              size: Theme.of(context).accentIconTheme.size,
            ),
            SizedBox(width: 10),
            Text(text),
          ],
        ),
      ),
    );
  }
}
