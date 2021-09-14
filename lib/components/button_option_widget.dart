import 'package:flutter/material.dart';

class ButtonOptionWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onTap;

  ButtonOptionWidget({required this.text, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: InkWell(
        splashColor: Theme.of(context).accentColor,
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Theme.of(context).accentIconTheme.color,
              size: Theme.of(context).accentIconTheme.size,
            ),
            SizedBox(width: 10),
            Text(
              text,
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ),
    );
  }
}
