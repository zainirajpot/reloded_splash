import 'dart:async';

import 'package:flutter/material.dart';
import 'package:reloded_splash/main.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({required Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => MyHomePage(),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/greenimage.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Container(
            //   child: Image.asset("images/italianFood.jpg",med),
            // ),
            const Padding(padding: EdgeInsets.only(top: 20.0,),),
            const Text(
              'Your app name',
              style: TextStyle(fontSize: 50.0, color: Colors.amber),
            ),
            const Padding(padding: EdgeInsets.only(top: 20.0,),),
            const SizedBox(
              height: 20,
            ),
            SleekCircularSlider(
              min: 0,
              max: 100,
              initialValue: 100,
              appearance: CircularSliderAppearance(
                infoProperties: InfoProperties(
                  mainLabelStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                customColors: CustomSliderColors(
                  dotColor: Colors.greenAccent,
                  progressBarColor: Colors.black,
                  shadowColor: Colors.white,
                  trackColor: Colors.white,
                ),
                spinnerDuration: 5,
                animDurationMultiplier: 5,
                animationEnabled: true,
                startAngle: 0.0,
                angleRange: 360,
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Initializing app...',
              style: TextStyle(color: Colors.grey, fontSize: 20,),
            ),
          ],
        ),
      ),
    );
  }
}




