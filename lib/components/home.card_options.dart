import 'package:flutter/material.dart';

Widget cardOptions({required String title, required Color bgColor}) {
  return Card(
    color: bgColor,
    margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 3),
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Center(child: Text(title)),
    ),
  );
}
