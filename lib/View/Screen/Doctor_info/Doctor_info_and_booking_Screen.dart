// ignore_for_file: file_names

import 'package:doctor_appointment/View/Screen/Home_Screen/Component/Main_image.dart';
import 'package:doctor_appointment/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';

class DoctorInfoScreen extends StatelessWidget {
  DoctorInfoScreen({Key? key}) : super(key: key);
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(kPrimaryColors);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: CustomScrollView(
        physics: const ScrollPhysics(),
        slivers: [
          SliverAppBar(
              backgroundColor: Colors.transparent,
              //   actions: _appBarActions,
              iconTheme: const IconThemeData(color: Colors.white),
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                background: MainImage(),
              )),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                  margin: const EdgeInsets.only(left: 15, top: 20),
                  child: const Text(
                    "About Doctor",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 15, top: 20),
                  child: const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin molestie malesuada.",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                  )),
              Container(
                margin: const EdgeInsets.only(left: 15, top: 20, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Reviews",
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(width: 12),
                        Icon(Icons.star, size: 18, color: Colors.orangeAccent),
                        SizedBox(width: 6),
                        Text("7.9",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(width: 6),
                        Text(
                          "(198)",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "See all",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: kPrimaryColors),
                      ),
                    )
                  ],
                ),
              )
            ]),
          )
        ],
      )),
    );
  }
}
