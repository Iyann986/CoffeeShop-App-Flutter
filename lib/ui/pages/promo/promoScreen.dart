// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, unused_local_variable

import 'package:coffeeshop_app/ui/components/VoucherSaya.dart';
import 'package:coffeeshop_app/ui/components/paketVoucher.dart';
import 'package:coffeeshop_app/ui/theme/colors.dart';
import 'package:flutter/material.dart';

class PromoScreen extends StatefulWidget {
  const PromoScreen({Key? key}) : super(key: key);

  @override
  State<PromoScreen> createState() => _PromoScreenState();
}

class _PromoScreenState extends State<PromoScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color(0xffc1b38f),
        appBar: AppBar(
          elevation: 0.8,
          title: Center(
            child: Text(
              "PROMO",
              style: TextStyle(color: black),
            ),
          ),
          backgroundColor: Color(0xffc1b38f),
        ),
        body: Container(
          child: Container(
            width: width,
            padding: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
                color: Color(0xffc1b38f),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: DefaultTabController(
              length: 2,
              child: Column(children: <Widget>[
                TabBar(
                  labelColor: Colors.black,
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  unselectedLabelColor: Color(0xff807272),
                  unselectedLabelStyle:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 17),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Colors.transparent,
                  tabs: <Widget>[
                    Tab(
                      child: Text("Voucher Saya"),
                    ),
                    Tab(
                      child: Text("Paket Voucher"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 3),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Icon(
                          Icons.confirmation_num_rounded,
                          size: 30,
                        ),
                      ),
                      hintText: "Masukan kode voucher di sini",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.white)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: height * 0.6,
                  child: TabBarView(
                    children: <Widget>[
                      VoucherSaya(),
                      PaketVoucher(),
                    ],
                  ),
                )
              ]),
            ),
          ),
        ));
  }
}
