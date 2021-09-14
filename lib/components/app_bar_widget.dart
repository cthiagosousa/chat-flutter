import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final double height;

  AppBarWidget({required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /* IconButton(
                icon: Icon(Icons.menu),
                color: Theme.of(context).iconTheme.color,
                iconSize: Theme.of(context).iconTheme.size!,
                splashRadius: 20.0,
                onPressed: () => Drawer(
                  child: Center(
                    child: Text('Drawer'),
                  ),
                ),
              ), */
              Text(
                "Thiago Sousa",
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(8),
              shape: BoxShape.rectangle,
              image: DecorationImage(
                image: NetworkImage(
                    'https://avatars.githubusercontent.com/u/63005780?s=400&u=3a0137c77cea78704eaaa17ac4fb6c17850b440e&v=4',
                    scale: 1),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
