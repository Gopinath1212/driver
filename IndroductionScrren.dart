import 'package:driver/PhoneNumber.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatelessWidget {
  final List<PageViewModel> pages = [
    PageViewModel(
      title: "Upload Mandatory Documents",
      body: "Low rates, Speedy Approvals.",
      image: Image.asset('assets/driver.gif'),
      decoration: PageDecoration(
        pageColor: Colors.indigo,
        titleTextStyle: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
        bodyTextStyle: TextStyle(fontSize: 20, color: Colors.white),
      ),
    ),
    PageViewModel(
      title: "Accept & complete rides",
      body: "No belt, no excuse.",
      image: Image.asset('assets/jhhgfgd.gif'),
      decoration: PageDecoration(
        pageColor: Colors.orange,
        titleTextStyle: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
        bodyTextStyle: TextStyle(fontSize: 20, color: Colors.white),
      ),
    ),
    PageViewModel(
      title: "24/7 Help[ & Support",
      body: "Think and Drive, Stay Alive.",
      image: Image.asset('assets/Taxi.gif'),
      decoration: PageDecoration(
        pageColor: Colors.teal,
        titleTextStyle: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
        bodyTextStyle: TextStyle(fontSize: 20, color: Colors.white),
      ),
    ),
    PageViewModel(
      title: "Flexible Working Hours",
      body: "Driving tip of the day – yield the right of way.",
      image: Image.asset('assets/parcel1.gif'),
      decoration: PageDecoration(
        pageColor: Colors.teal,
        titleTextStyle: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
        bodyTextStyle: TextStyle(fontSize: 20, color: Colors.white),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: pages,
      onDone: () {
        // Handle the onboarding completion and navigate to the next screen
        Navigator.push(context, MaterialPageRoute(builder: (context) => PhoneNumber()));
      },
      onSkip: () {
        // Handle the skip action if needed
        Navigator.push(context, MaterialPageRoute(builder: (context) => PhoneNumber()));
      },
      showSkipButton: true,
      skip: const Text(
        "Skip",
        style: TextStyle(color: Colors.black),
      ),
      done: const Text(
        "Done",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      next: const Icon(Icons.arrow_forward, color: Colors.black),
      dotsDecorator: DotsDecorator(
        size: const Size(10.0, 10.0),
        color: Colors.grey,
        activeColor: Colors.indigoAccent,
        activeSize: const Size(20.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}