import 'package:flutter/material.dart';
import 'package:translator_app/components/shared.custom_list.dart';
import 'package:translator_app/constants/demo.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: ListView.builder(
          itemCount: numList.length,
          itemBuilder: (context, index) => customList(
            model: numList[index],
            bgColor: Colors.orange,
          ),
        ),
      ),
    );
  }
}
