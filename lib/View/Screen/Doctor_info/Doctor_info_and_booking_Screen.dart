


// ignore_for_file: file_names

import 'package:doctor_appointment/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';

class DoctorInfoScreen extends StatelessWidget {
  const DoctorInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(kPrimaryColors);
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            Column(
              children: [
                Container(
                  height: 250,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/image/do.png"),
                        fit: BoxFit.cover
                      )
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                        ),
                      )
                    ],
                  ),
                ),

              ],
            )
          ],

        ),
      ),

    );
  }
}
