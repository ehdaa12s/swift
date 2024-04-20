import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swift/core/utils/size_config.dart';

import 'package:swift/screens/home_screen.dart';

class SplahBody extends StatefulWidget {
  const SplahBody({Key? key}) : super(key: key);

  @override
  State<SplahBody> createState() => _SplahBodyState();
}

class _SplahBodyState extends State<SplahBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);

    goToNextView();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        FadeTransition(
          opacity: fadingAnimation!,
        ),
        const Image(image: AssetImage('assets/images/swift logo.png')),
        const Spacer(),
      ],
    );
  }
}

void goToNextView() {
  Future.delayed(const Duration(seconds: 3), () {
    Get.to(() => const HomeScreen(), transition: Transition.fade);
  });
}
