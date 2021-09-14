import 'package:chat/components/button_option_widget.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Configurações",
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            ButtonOptionWidget(
              text: "Configurar perfil",
              icon: Icons.person,
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
