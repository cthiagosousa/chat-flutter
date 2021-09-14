import 'package:chat/components/drawer_button_widget.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
        child: Column(
          children: [
            DrawerButtonWidget(
              text: "Perfil",
              icon: Icons.account_circle_sharp,
              onTap: () {},
            ),
            DrawerButtonWidget(
              text: "Configurações",
              icon: Icons.settings,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
