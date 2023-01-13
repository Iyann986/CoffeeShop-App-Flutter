// ignore_for_file: avoid_unnecessary_containers, file_names, unused_import

import 'package:coffeeshop_app/ui/model/coffeeModel.dart';
import 'package:flutter/material.dart';

import 'menuItemcard.dart';

class HotCoffeePage extends StatelessWidget {
  const HotCoffeePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: menu.length,
          itemBuilder: (context, int key) {
            return MenuItemCard(index: key);
          }),
    );
  }
}
