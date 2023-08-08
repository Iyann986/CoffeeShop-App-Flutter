// ignore_for_file: prefer_const_constructors, duplicate_ignore, avoid_web_libraries_in_flutter, file_names, prefer_const_literals_to_create_immutables, unused_import, depend_on_referenced_packages, unused_local_variable

import 'dart:async';
import 'package:coffeeshop_app/main.dart';
import 'package:coffeeshop_app/ui/theme/constant.dart';
import 'package:coffeeshop_app/ui/pages/access/loginScreen.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Scaffold(
        backgroundColor: Color(0xff6A412C),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(10),
                child: Image(
                  image: AssetImage('assets/logo.png'),
                  height: 200,
                  width: 300,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                    text: "Morning",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                    children: [
                      TextSpan(
                        text: "COFFEE",
                        style: TextStyle(
                          color: Color(0xffC1B38F),
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
