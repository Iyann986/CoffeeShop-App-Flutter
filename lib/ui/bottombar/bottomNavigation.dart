// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, unused_field, prefer_final_fields, unused_import

import 'package:coffeeshop_app/ui/pages/accountpage/accountPage.dart';
import 'package:coffeeshop_app/ui/pages/homepage/homescreen.dart';
import 'package:coffeeshop_app/ui/pages/promo/promoScreen.dart';
import 'package:flutter/material.dart';

import 'package:coffeeshop_app/ui/pages/access/loginScreen.dart';

class BottomNavBar extends StatefulWidget {
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  // late String? emailField = "";
  int _selectedIndex = 0;

  List<Widget> _layoutpage = [];

  // static TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  // final _layoutpage = [
  //   HomeScreen(),
  //   PromoScreen(),
  //   AccountScreen(),
  // ];

  @override
  void initState() {
    _layoutpage = [
      HomeScreen(),
      PromoScreen(),
      AccountScreen(),
    ];
    super.initState();
  }

  void _onTapItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDDD1B1),
      body: _layoutpage[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff814932),
        onTap: _onTapItem,
        backgroundColor: Color(0xffDDD1B1),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_activity_rounded),
              label: 'Promo',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_sharp),
              label: 'Account',
              backgroundColor: Colors.black),
        ],
      ),
    );
  }
}
