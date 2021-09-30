library flutter_onboarding;


import 'package:doctor_appointment/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'on_board_page.dart';

class OnBoardingScreen extends StatefulWidget {
  final List<OnBoardPage> list;
  final MaterialPageRoute pageRoute;
  final Text getStartedText;
  final Color getStartedColor;

  const OnBoardingScreen(
      {Key? key,
      required this.list,
      required this.pageRoute,
      required this.getStartedText,
      required this.getStartedColor})
      : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentPage = 0;

  final PageController _pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.centerRight,
                  width: MediaQuery.of(context).size.width,
                  child: GestureDetector(
                      onTap: () {
                        _pageController.jumpToPage(widget.list.length - 1);
                      },
                      child: const Text(
                        "Skip",
                        style: TextStyle(fontWeight: FontWeight.w800),
                      )),
                ),
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    children: widget.list,
                    onPageChanged: (value) => {setCurrentPage(value)},
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List.generate(widget.list.length, (index) => getIndicator(index))),
                ),
                const SizedBox(height: 30),
              ],
            ),
            currentPage == widget.list.length - 1
                ? Positioned(
                    bottom: 0,
                    right: 0,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () => Navigator.push(context, widget.pageRoute),
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(0),
                                    bottomLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(0)),
                                color: widget.getStartedColor),
                            width: 140,
                            height: 50,
                            child: Center(child: widget.getStartedText)),
                      ),
                    ))
                : Container()
          ],
        ),
      ),
    );
  }

  setCurrentPage(int value) {
    currentPage = value;
    setState(() {});
  }

  AnimatedContainer getIndicator(int pageNo) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        height: 8,
        width: (currentPage == pageNo) ? 30 : 8,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            color: (currentPage == pageNo) ? widget.getStartedColor : Colors.grey));
  }

  void changePage() {
    if (currentPage == widget.list.length - 1) {
      setState(() {});
    } else {
      _pageController.animateToPage(currentPage + 1, duration: const Duration(milliseconds: 300), curve: Curves.linear);
    }
  }
}
