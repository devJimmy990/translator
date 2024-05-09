import 'package:flutter/material.dart';
import 'package:translator_app/components/shared.custom_list.dart';
import 'package:translator_app/constants/demo.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: famList.length,
          itemBuilder: (context, index) => customList(
            model: famList[index],
            bgColor: Colors.purple,
          ),
        ),
      ),
    );
  }
}
