import 'package:flutter/material.dart';
import 'package:translator_app/components/shared.img_avatar.dart';

Widget myCustomDrawer({required BuildContext context}) {
  return Drawer(
    child: ListView(
      children: [
        imgAvatar(),
        const Divider(
          thickness: 3,
        ),
        _buildListTile(context, Icons.numbers, "Numbers", "numbers"),
        _buildListTile(context, Icons.family_restroom, "Family", "family"),
        _buildListTile(context, Icons.color_lens, "Colors", "colors"),
        _buildListTile(context, Icons.message, "Phrases", "phrases"),
      ],
    ),
  );
}

Widget _buildListTile(
    BuildContext context, IconData icon, String title, String route) {
  return ListTile(
    leading: Icon(icon),
    title: Text(title),
    onTap: () {
      Navigator.pop(context);
      Navigator.pushNamed(context, route);
    },
  );
}
