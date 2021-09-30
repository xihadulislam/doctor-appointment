import 'package:doctor_appointment/utils/size_config.dart';
import 'package:flutter/cupertino.dart';

class OnBoardPage extends StatefulWidget {
  final Text title;
  final Text content;
  final ImageProvider image;

  const OnBoardPage({Key? key, required this.title, required this.content, required this.image}) : super(key: key);

  @override
  _OnBoardPageState createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 600));
    animation =
        Tween(begin: -150.0, end: 0.0).animate(CurvedAnimation(parent: animationController, curve: Curves.easeInOut));

    animation.addListener(() => setState(() {}));

    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          Center(
            child: Transform(
              transform: Matrix4.translationValues(animation.value, 0.0, 0.0),
              child: Container(
                width: getProportionateScreenWidth(300),
                height: getProportionateScreenHeight(300),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(image: DecorationImage(image: widget.image)),
              ),
            ),
          ),
          const Spacer(),
          Transform(
              transform: Matrix4.translationValues(animation.value, 0.0, 0.0),
              child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: MediaQuery.of(context).size.width,
                  child: widget.title)),
          Transform(
            transform: Matrix4.translationValues(animation.value, 0.0, 0.0),
            child: Container(
                margin: const EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width,
                child: widget.content),
          ),
        ],
      ),
    );
  }
}
