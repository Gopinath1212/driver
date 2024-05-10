import 'package:driver/WelcomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Set your preferred background color
      body: Center(
        child: AnimatedSplashContent(),
      ),
    );
  }
}

class AnimatedSplashContent extends StatefulWidget {
  @override
  _AnimatedSplashContentState createState() => _AnimatedSplashContentState();
}

class _AnimatedSplashContentState extends State<AnimatedSplashContent> {
  bool _visible = false;

  @override
  void initState() {
    super.initState();
    _fadeIn();
  }

  Future<void> _fadeIn() async {
    await Future.delayed(Duration(milliseconds: 500));
    setState(() {
      _visible = true;
    });

    await Future.delayed(Duration(seconds: 2));
    // Navigate to the main screen after the splash screen;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => WelcomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _visible ? 1.0 : 0.0,
      duration: Duration(seconds: 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 150, // Set your preferred width
            height: 150, // Set your preferred height
            decoration: BoxDecoration(
              shape: BoxShape.circle, // Optionally, set the shape to circle
              border: Border.all(
                color: Colors.white,
                width: 4,
              ),
            ),
            child: ClipOval(
              child: Image.asset(
                "assets/Driver Logo.jpeg",
                fit: BoxFit.cover, // Set your preferred BoxFit
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'DRIVER',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

// class MainScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Main Screen'),
//       ),
//       body: Center(
//         child: Text('Welcome to the Main Screen!'),
//       ),
//     );
//   }
// }