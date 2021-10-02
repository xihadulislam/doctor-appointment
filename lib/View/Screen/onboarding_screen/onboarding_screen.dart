import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constant.dart';
import '../main_screen.dart';
import 'flutter_onboarding.dart';
import 'on_board_page.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({Key? key}) : super(key: key);

  final List<OnBoardPage> list = [
    const OnBoardPage(
        title: Text(
          "আপনি কি ডাক্তারের সন্ধান করছেন?",
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 32, letterSpacing: 1.0),
        ),
        content: Text(""),
        image: AssetImage("assets/images/onBoard1.png")),
    const OnBoardPage(
        title: Text(
          "আপনার পরবর্তী ডাক্তারের জন্য সময়সূচী বাছাই করুন।",
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 32, letterSpacing: 1.0),
        ),
        content: Text(""),
        image: AssetImage("assets/images/onBoard2.png")),
    const OnBoardPage(
        title: Text(
          "সেরা ডাক্তারদের পরিষেবা নিন।",
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 32, letterSpacing: 1.0),
        ),
        content: Text(""),
        image: AssetImage("assets/images/onBoard3.png")),
    const OnBoardPage(
        title: Text(
          "আপনার রোগীকে একটি নির্দিষ্ট তারিখে ডাক্তার দেখান।",
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 32, letterSpacing: 1.0),
        ),
        content: Text(""),
        image: AssetImage("assets/images/onBoard4.png")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: OnBoardingScreen(
          getStartedText: const Text(
            "Get Started",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 16),
          ),
          getStartedColor: kPrimaryColors,
          list: list,
          pageRoute: MaterialPageRoute(builder: (context) => MainScreen())),
    );
  }
}
