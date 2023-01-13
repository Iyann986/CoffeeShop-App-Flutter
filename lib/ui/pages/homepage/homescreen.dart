// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unused_element, depend_on_referenced_packages, unused_import, annotate_overrides, unnecessary_this

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:coffeeshop_app/ui/pages/access/userModel.dart';
import 'package:coffeeshop_app/ui/components/coldCoffeePage.dart';
import 'package:coffeeshop_app/ui/components/hotCoffeePage.dart';
import 'package:coffeeshop_app/ui/components/otherPage.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // User? user = FirebaseAuth.instance.currentUser;
  // UserModel loggedInUser = UserModel();

  // @override
  // void initState() {
  //   super.initState();
  //   FirebaseFirestore.instance
  //       .collection("users")
  //       .doc(user!.uid)
  //       .get()
  //       .then((value) {
  //     this.loggedInUser = UserModel.fromMap(value.data());
  //     setState(() {});
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: height * 0.3,
                  width: width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/header.jpg"),
                          fit: BoxFit.cover)),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                      Colors.black.withOpacity(0.0),
                      Colors.black.withOpacity(0.0),
                      Colors.black.withOpacity(0.1),
                      Colors.black.withOpacity(0.5),
                      Colors.black.withOpacity(1.0),
                    ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
                  ),
                ),
                Positioned(
                  bottom: 90,
                  left: 20,
                  child: RichText(
                    text: TextSpan(
                        text: "it's Great",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 20),
                        children: [
                          TextSpan(
                              text: "Day for \nCoffee",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24))
                        ]),
                  ),
                )
              ],
            ),
            Transform.translate(
              offset: Offset(0.0, -(height * 0.3 - height * 0.26)),
              child: Container(
                width: width,
                padding: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: Color(0xffc1b38f),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: DefaultTabController(
                    length: 3,
                    child: Column(
                      children: <Widget>[
                        TabBar(
                          labelColor: Colors.black,
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                          unselectedLabelColor: Color(0xff807272),
                          unselectedLabelStyle: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 17),
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: Colors.transparent,
                          tabs: <Widget>[
                            Tab(
                              child: Text("Hot Coffee"),
                            ),
                            Tab(
                              child: Text("Cold Coffee"),
                            ),
                            Tab(
                              child: Text("Orthers"),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, bottom: 10),
                          child: TextField(
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 3),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15),
                                  child: Icon(
                                    Icons.search,
                                    size: 30,
                                  ),
                                ),
                                hintText: "Search your coffee",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        width: 1.0, color: Colors.white))),
                          ),
                        ),
                        Container(
                          height: height * 0.6,
                          child: TabBarView(
                            children: <Widget>[
                              HotCoffeePage(),
                              ColdCoffeePage(),
                              OrtherPage(),
                            ],
                          ),
                        )
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // FirebaseAuth auth = FirebaseAuth.instance;
//     // if (auth.currentUser != null) {
//     //   print(auth.currentUser!.email);
//     // }

    // void initState() {
    //   super.initState();
    //   FirebaseFirestore.instance
    //       .collection("users")
    //       .doc(user!.uid)
    //       .get()
    //       .then((value) {
    //     this.loggedInUser = UserModel.fromMap(value.data());
    //     setState(() {});
    //   });
    // }

//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//     return Scaffold(
//         body: SingleChildScrollView(
//       child: Container(
//         child: Column(
//           children: <Widget>[
//             Stack(
//               children: <Widget>[
//                 Container(
//                   height: height * 0.3,
//                   width: width,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                           image: AssetImage("assets/header.jpg"),
//                           fit: BoxFit.cover)),
//                   child: Container(
//                     decoration: BoxDecoration(
//                         gradient: LinearGradient(colors: [
//                       Colors.black.withOpacity(0.0),
//                       Colors.black.withOpacity(0.0),
//                       Colors.black.withOpacity(0.1),
//                       Colors.black.withOpacity(0.5),
//                       Colors.black.withOpacity(1.0),
//                     ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
//                   ),
//                 ),
//                 Positioned(
//                   bottom: 90,
//                   left: 20,
//                   child: RichText(
//                     text: TextSpan(
//                         text: "it's Great",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.w300,
//                             fontSize: 20),
//                         children: [
//                           TextSpan(
//                               text: "Day for \nCoffee",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.w500,
//                                   fontSize: 24))
//                         ]),
//                   ),
//                 )
//               ],
//             ),
//             Transform.translate(
//               offset: Offset(0.0, -(height * 0.3 - height * 0.26)),
//               child: Container(
//                 width: width,
//                 padding: EdgeInsets.only(top: 10),
//                 decoration: BoxDecoration(
//                     color: Color(0xffc1b38f),
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(30),
//                         topRight: Radius.circular(30))),
//                 child: DefaultTabController(
//                     length: 3,
//                     child: Column(
//                       children: <Widget>[
//                         TabBar(
//                           labelColor: Colors.black,
//                           labelStyle: TextStyle(
//                               fontWeight: FontWeight.bold, fontSize: 18),
//                           unselectedLabelColor: Color(0xff807272),
//                           unselectedLabelStyle: TextStyle(
//                               fontWeight: FontWeight.normal, fontSize: 17),
//                           indicatorSize: TabBarIndicatorSize.label,
//                           indicatorColor: Colors.transparent,
//                           tabs: <Widget>[
//                             Tab(
//                               child: Text("Hot Coffee"),
//                             ),
//                             Tab(
//                               child: Text("Cold Coffee"),
//                             ),
//                             Tab(
//                               child: Text("Orthers"),
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 5,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(
//                               left: 20, right: 20, bottom: 10),
//                           child: TextField(
//                             decoration: InputDecoration(
//                                 contentPadding:
//                                     EdgeInsets.symmetric(vertical: 3),
//                                 prefixIcon: Padding(
//                                   padding: const EdgeInsets.only(
//                                       left: 15, right: 15),
//                                   child: Icon(
//                                     Icons.search,
//                                     size: 30,
//                                   ),
//                                 ),
//                                 hintText: "Search your coffee",
//                                 border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(30),
//                                     borderSide: BorderSide(
//                                         width: 1.0, color: Colors.white))),
//                           ),
//                         ),
//                         Container(
//                           height: height * 0.6,
//                           child: TabBarView(
//                             children: <Widget>[
//                               HotCoffeePage(),
//                               ColdCoffeePage(),
//                               OrtherPage(),
//                             ],
//                           ),
//                         )
//                       ],
//                     )),
//               ),
//             )
//           ],
//         ),
//       ),
//     ));
//   }
// }
