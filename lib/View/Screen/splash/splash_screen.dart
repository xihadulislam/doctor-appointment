import 'dart:async';

import 'package:doctor_appointment/View/Screen/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:get/get.dart';

import '../../../constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () => Get.off(OnboardingScreen()));
  }

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bg.png"))),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(flex: 2),
                  const Text(
                    "Doctor 24",
                    style: TextStyle(
                      fontSize: 48,
                      color: kPrimaryColors,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration:
                        const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/sp_logo.png"))),
                  ),
                  const Spacer(),
                ],
              ),
              const Spacer(),
              const CircularProgressIndicator(
                backgroundColor: Colors.redAccent,
              ),
              const SizedBox(height: 20),
              const Text(
                "Developed By",
                style: TextStyle(
                  fontSize: 12,
                  color: kPrimaryColors,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                "Ok CodeX".toUpperCase(),
                style: const TextStyle(
                  fontSize: 22,
                  color: kTitleTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
            ],
          )),
    );
  }
}
