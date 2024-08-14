import 'package:flutter/material.dart';
import 'package:mogab/Screens/home_screen_page.dart';
import 'package:mogab/Screens/moga_chat.dart';
import 'package:mogab/navigator.dart';
import 'package:mogab/widgets/Elveated_buttons.dart';
import 'package:mogab/widgets/background_photo.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          BackgroundPhoto(path: "assets/images/welcomebackground.png"),
          SizedBox(
            height: 40,
          ),
          Text(
            'Welcome to MOGA',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'This is your place to get rid of stress and anxiety through different ways of relaxing.',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ButtonElevated(
                text: "GET STARTED",
                onpressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BottomNavBarPage(
                      )));
                }),
          ),
        ]),
      ),
    );
  }
}
