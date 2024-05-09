import 'package:flutter/material.dart';
import 'package:translator_app/components/home.card_options.dart';
import 'package:translator_app/components/home.btn_navigator.dart';
import 'package:translator_app/components/home.my_custom_drawer.dart';
import 'package:translator_app/components/shared.img_avatar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Translator App"),
      ),
      drawer: myCustomDrawer(context: context),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
              height: 150,
              child: ListView.builder(
                itemCount: 12,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => imgAvatar(),
              )),
              const Spacer(),
          btnNavigator(
            context: context,
            route: "numbers",
            child: cardOptions(
              title: "Numbers",
              bgColor: Colors.orange,
            ),
          ),
          btnNavigator(
            context: context,
            route: "family",
            child: cardOptions(
              title: "Family",
              bgColor: Colors.purple,
            ),
          ),
          btnNavigator(
            context: context,
            route: "colors",
            child: cardOptions(
              title: "Colors",
              bgColor: Colors.red,
            ),
          ),
          btnNavigator(
            context: context,
            route: "phrases",
            child: cardOptions(
              title: "Phases",
              bgColor: Colors.green,
            ),
          ),
              const Spacer(),

        ],
      )),
    );
  }
}
