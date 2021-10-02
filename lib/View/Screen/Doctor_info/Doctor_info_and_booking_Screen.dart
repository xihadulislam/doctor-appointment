
// ignore_for_file: file_names

import 'package:doctor_appointment/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';

class DoctorInfoScreen extends StatelessWidget {
   DoctorInfoScreen({Key? key}) : super(key: key);
  final ScrollController _scrollController=ScrollController();
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(kPrimaryColors);
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          physics: const ScrollPhysics(),
          slivers: [
            SliverAppBar(
                backgroundColor: Colors.transparent,
             //   actions: _appBarActions,
                iconTheme: const IconThemeData(color: Colors.white),
                expandedHeight: 500,
                flexibleSpace: FlexibleSpaceBar(
                  background: MainImage(),
                )),
            SliverList(
              delegate: SliverChildListDelegate([
                ListView.builder(
                  shrinkWrap: true,
                  controller: _scrollController,
                  itemCount: 7,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context,int idex){
                    return Container(
                      height: 155,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      decoration:  BoxDecoration(
                        color: kColorsWhite,
                        borderRadius: const BorderRadius.all(Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: const Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10,left: 20,right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(

                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:  [
                                    Container(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Dr.Olivia",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),)),
                                    Container(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Cardiologists",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)),
                                  ],
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  padding: const EdgeInsets.all(6),
                                  decoration: const BoxDecoration(
                                      color: kProfileIconBkColor,
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                                  child: ClipRRect(
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                    child: FadeInImage.assetNetwork(
                                      placeholder: 'assets/image/profile_lode.gif',
                                      image: "https://cdn-icons-png.flaticon.com/512/3304/3304567.png",
                                    ),
                                  ),
                                ),
                              ],),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 3,left: 20,right: 20),
                            color: kScheduleTextColor,
                            height: 1,
                          ),
                          const SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RichText(
                                text: TextSpan(

                                  children: const [
                                    WidgetSpan(
                                      child: Icon(CupertinoIcons.calendar, size: 17),
                                    ),

                                    TextSpan(
                                        text: "   29/9/2020",
                                        style: TextStyle(color: kTextColorsBlack)


                                    ),
                                  ],
                                ),
                              ),
                              RichText(
                                text: TextSpan(

                                  children: const [
                                    WidgetSpan(
                                      child: Icon(CupertinoIcons.clock_fill, size: 17),
                                    ),

                                    TextSpan(
                                        text: "   10:35 PM",
                                        style: TextStyle(color: kTextColorsBlack)


                                    ),
                                  ],
                                ),
                              ),
                              RichText(
                                text: TextSpan(

                                  children: const [
                                    WidgetSpan(
                                      child: Icon(Icons.adjust_rounded, size: 17,color: Colors.green,),
                                    ),

                                    TextSpan(
                                        text: "   29/9/2020",
                                        style: TextStyle(color: kTextColorsBlack)


                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                          const SizedBox(height: 7,),

                          Container(
                            margin: EdgeInsets.only(top: 5,left: 20,right: 20),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      color: kTextColors,
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                    ),
                                    child: Text("Cancel",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),),
                                  ),
                                ),
                                SizedBox(width: 10,),

                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      color: kPrimaryColors,
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                    ),
                                    child: Text("Reschedule",
                                      style: TextStyle(color: kColorsWhite,fontWeight: FontWeight.w700,fontSize: 18),),
                                  ),
                                ),

                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },

                ),
              ]),
            )
          ],

        )
        // ListView(
        //   scrollDirection: Axis.vertical,
        //   shrinkWrap: true,
        //   children: [
        //     Column(
        //       children: [
        //         Container(
        //           height: 250,
        //           decoration: const BoxDecoration(
        //               image: DecorationImage(
        //                   image: AssetImage("assets/image/do.png"),
        //                 fit: BoxFit.cover
        //               )
        //           ),
        //           child: Column(
        //             children: [
        //               Container(
        //                 height: 200,
        //                 decoration: BoxDecoration(
        //                   color: Colors.grey[200],
        //                   borderRadius: BorderRadius.only(
        //                     topLeft: Radius.circular(40),
        //                     topRight: Radius.circular(40),
        //                   ),
        //                 ),
        //               )
        //             ],
        //           ),
        //         ),
        //
        //       ],
        //     )
        //   ],
        //
        // ),
      ),

    );
  }
}
class MainImage extends StatefulWidget {
  @override
  _MainImageState createState() => _MainImageState();
}

class _MainImageState extends State<MainImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image/do.png'),
                fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
              ])),
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // FadeAnimation(
                      //     1.5,
                      //     Text(
                      //       "Our New Products",
                      //       style: TextStyle(
                      //           color: Colors.white,
                      //           fontSize: 30,
                      //           fontWeight: FontWeight.bold),
                      //     )),
                      // SizedBox(
                      //   height: 15,
                      // ),
                      // FadeAnimation(
                      //     1.7,
                      //     Row(
                      //       children: <Widget>[
                      //         Text(
                      //           "VIEW MORE",
                      //           style: TextStyle(
                      //               color: Colors.white,
                      //               fontWeight: FontWeight.w600),
                      //         ),
                      //         SizedBox(
                      //           width: 5,
                      //         ),
                      //         Icon(
                      //           Icons.arrow_forward_ios,
                      //           color: Colors.white,
                      //           size: 15,
                      //         )
                      //       ],
                      //     ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}