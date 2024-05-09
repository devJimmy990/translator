import 'package:flutter/material.dart';

Widget btnNavigator({
  required BuildContext context,
  required String route,
  required Widget child,
}) {
  return InkWell(
    onTap: () {
      Navigator.pushNamed(context, route);
    },
    child: child,
  );
}
