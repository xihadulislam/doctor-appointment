// ignore_for_file: use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';
import '../../../../constant.dart';

class MainImage extends StatefulWidget {
  @override
  _MainImageState createState() => _MainImageState();
}

class _MainImageState extends State<MainImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(color: kPrimaryColors),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 100,
              width: 100,
              padding: const EdgeInsets.all(6),
              decoration: const BoxDecoration(
                  color: kProfileIconBkColor,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: FadeInImage.assetNetwork(
                  placeholder: 'assets/image/profile_lode.gif',
                  image:
                  "https://cdn-icons-png.flaticon.com/512/3304/3304567.png",
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Dr.Olivia",
              style: TextStyle(
                  fontSize: 23,
                  color: kWhiteColor,
                  fontWeight: FontWeight.w700),
            ),
            const Text(
              "Cardiologists",
              style: TextStyle(
                fontSize: 14,
                color: kTextColors,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 45,
                  width: 45,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: kPrimaryColors2,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: const Icon(
                    Icons.call,
                    color: kWhiteColor,
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                Container(
                  height: 45,
                  width: 45,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: kPrimaryColors2,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: const Icon(
                    Icons.message,
                    color: kWhiteColor,
                  ),
                ),
              ],
            )
          ],
        ));
  }
}