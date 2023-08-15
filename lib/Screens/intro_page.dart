import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class intro_page extends StatefulWidget {
  const intro_page({super.key});

  @override
  State<intro_page> createState() => _intro_pageState();
}

class _intro_pageState extends State<intro_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroductionScreen(
      showSkipButton: true,
      showDoneButton: true,
      pages: [
        PageViewModel(
          image: Image.asset("lib/Image/8.jpg"),
          title: "BX Player",
          body: "Welcome to BX Media Palyer app",
        ),
      ],
    ));
  }
}
