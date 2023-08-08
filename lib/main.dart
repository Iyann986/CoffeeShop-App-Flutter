// ignore_for_file: prefer_const_constructors, unused_import, depend_on_referenced_packages, prefer_interpolation_to_compose_strings, avoid_print, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffeeshop_app/ui/bottombar/bottomNavigation.dart';
import 'package:coffeeshop_app/ui/pages/access/loginScreen.dart';
import 'package:coffeeshop_app/ui/pages/accountpage/accountPage.dart';
import 'package:coffeeshop_app/ui/pages/homepage/homescreen.dart';
import 'package:coffeeshop_app/ui/pages/splashScreen/splashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await GetStorage.init();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void _initializeApp() async {
    await Firebase.initializeApp();
  }

  @override
  void initState() {
    _initializeApp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    CollectionReference users =
        FirebaseFirestore.instance.collection('myCollection');

    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<DocumentSnapshot>(
        future: users.doc("myDocument").get(),
        builder:
            (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.hasError) {
            print(snapshot.error.toString());
            return Text(snapshot.error.toString());
          }

          if (snapshot.connectionState == ConnectionState.done) {
            Map<String, dynamic>? data =
                snapshot.data?.data() as Map<String, dynamic>?;
            return Text("Name: ${data!['name']}");
          }

          return Text("loading");
        },
      ),
    );
  }
}
