import 'package:flutter/material.dart';

Widget imgAvatar() {
  return const CircleAvatar(
    radius: 90,
    child: CircleAvatar(
      radius: 85,
      backgroundColor: Colors.white,
      backgroundImage: AssetImage("assets/images/me.jpg"),
    ),
  );
}
