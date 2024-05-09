import 'package:flutter/material.dart';
import 'package:translator_app/components/shared.custom_list.dart';
import 'package:translator_app/constants/demo.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: ListView.builder(
          itemCount: colList.length,
          itemBuilder: (context, index) => customList(
            model: colList[index],
            bgColor: Colors.red,
          ),
        ),),);
  }
}