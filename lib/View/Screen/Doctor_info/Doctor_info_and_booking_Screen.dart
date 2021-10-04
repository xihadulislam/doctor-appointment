// ignore_for_file: file_names

import 'package:doctor_appointment/View/Screen/Home_Screen/Component/Main_image.dart';
import 'package:doctor_appointment/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';

import 'Component/User_Reviews.dart';

class DoctorInfoScreen extends StatelessWidget {
  DoctorInfoScreen({Key? key}) : super(key: key);
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(kPrimaryColors);
    final heightMedia=MediaQuery.of(context).size.height;
    final widthMedia=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Stack(
            children: [
              CustomScrollView(
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
                            Text("4.9",
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
                  ),
                  const UserReviews(),
                ]),
              )
        ],
      ),
              Positioned(
                  bottom: 0,
                  child:
              Container(
                height: heightMedia/6.02,
                width: widthMedia/1,
                // margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),

                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Consultation Price ",style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: kPrimaryColors),),
                          Text("৳ 510",style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: kPrimaryColors),),

                        ],
                      ),
                    ),
                    Container(
                      height: heightMedia/15,
                      width: widthMedia/1.09,
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                        color: kPrimaryColors,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: MaterialButton(onPressed: (){},child: Text("Book Appointment",style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: kWhiteColor),),),
                    )

                  ],
                ),
              ))
            ],
          )),
    );
  }
}
