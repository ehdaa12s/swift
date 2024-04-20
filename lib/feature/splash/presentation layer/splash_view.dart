
import 'package:flutter/material.dart';
import 'package:swift/feature/splash/presentation%20layer/widgets/Splah%20body.dart';
class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SplahBody(),
    );
  }
}
