import 'package:flutter/material.dart';
import 'package:groceryapp/screens/firstscreen.dart';
 // Ensure this imports the correct screen

void main() {
  runApp(const MyApp()); // Use const for performance
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Splash(),
      ),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({super.key}); // Add const for consistency

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    // Navigate to the HomeScreen after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  first()), // Update to use uppercase
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
        body: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/splash_screen.jpeg",
                height: 300,
                width: 300,
              ),
            ],
          ),
        ),

    );
  }
}
