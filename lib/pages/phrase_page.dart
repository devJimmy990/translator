import 'package:flutter/material.dart';
import 'package:translator_app/components/shared.custom_list.dart';
import 'package:translator_app/constants/demo.dart';

class PhrasePage extends StatelessWidget {
  const PhrasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: phraseList.length,
          itemBuilder: (context, index) => customList(
            model: phraseList[index],
            bgColor: Colors.green,
          ),
        ),
      ),
    );
  }
}
