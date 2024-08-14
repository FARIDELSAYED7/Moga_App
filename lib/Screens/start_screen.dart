import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:mogab/Screens/welcomescreen.dart';
import 'package:mogab/util/Background_image.dart';
import 'package:mogab/util/logo_title.dart';

class StatrtScreen extends StatelessWidget {
  const StatrtScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(

      globalBackgroundColor: Colors.white,
      globalHeader: Align(
        alignment: Alignment.topCenter,
        child: LogoTitle(),
      ),
      showNextButton: true,
      showDoneButton: true,
      showBackButton: true,
      back: const Text("Back", style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Text("Next", style: TextStyle(fontWeight: FontWeight.w600)),
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      onDone: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
      },
      pages: [
        PageViewModel(
          reverse: true,
          title: "Hi, Welcome to MOGA",
          body:
              "This is your place to get rid of stress and anxiety through different ways of relaxing.",
          image: BackgroundImage(url: 'assets/images/intros4.png'),
          decoration: const PageDecoration(
            fullScreen: true,
            contentMargin: EdgeInsets.only(top: 120, bottom: 80),
            bodyAlignment: Alignment.bottomCenter,
            titleTextStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            bodyTextStyle: TextStyle(
              fontSize: 16,
            ),
            titlePadding: EdgeInsets.all(10),
            bodyPadding: EdgeInsets.only(bottom: 25),
          ),
        ),
        PageViewModel(
          reverse: true,
          title: "Our Main Goal is Solving “Stress”",
          body:
              "Stress is like any other illness that needs to be addressed and treated; it is not a defect or a personal flaw.",
          image: BackgroundImage(url: 'assets/images/intros2.png'),
          decoration: const PageDecoration(
            fullScreen: true,
            contentMargin: EdgeInsets.only(top: 100, bottom: 70),
            bodyAlignment: Alignment.bottomCenter,
            titleTextStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
            bodyTextStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
            titlePadding: EdgeInsets.all(10),
            bodyPadding: EdgeInsets.only(bottom: 25),
          ),
        ),
        PageViewModel(
          reverse: true,
          title: "We Provide a Whole Relaxation Environment",
          body:
              "Here at MOGA, we provide Relaxation Sounds, Relaxing Games, Meditation Animations, and Professional Healthcare Specialists.",
          image: BackgroundImage(url: 'assets/images/intros3.png'),
          decoration: const PageDecoration(
            fullScreen: true,
            contentMargin: EdgeInsets.only(top: 100, bottom: 70),
            bodyAlignment: Alignment.bottomCenter,
            titleTextStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
            bodyTextStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
            ),
            titlePadding: EdgeInsets.all(10),
            bodyPadding: EdgeInsets.only(bottom: 0),
          ),
        ),
        PageViewModel(
          reverse: true,
          title: "Start Your Journey with MOGA NOW!",
          body: "",
          image: BackgroundImage(url: 'assets/images/intros5.png'),
          decoration: const PageDecoration(
            fullScreen: true,
            contentMargin: EdgeInsets.only(top: 100, bottom: 70),
            bodyAlignment: Alignment.bottomCenter,
            titleTextStyle: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w600, color: Colors.black),
            bodyTextStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
            ),
            titlePadding: EdgeInsets.all(10),
            bodyPadding: EdgeInsets.only(bottom: 0),
          ),
        ),
      ],
    );
  }
}
