import 'package:agri_higala/main.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class LandingPage extends StatefulWidget {
  @override
  State createState() => LandingPageState();
}

class LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => FirstScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/back.png'),
                    fit: BoxFit.fill)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(padding: EdgeInsets.only(top: 200.0, bottom: 10.0)),
              Expanded(
                  child: Image(
                image: AssetImage(
                  'assets/images/logo.png',
                ),
                height: 350,
                width: 200,
              )),
              Expanded(
                  child: Image(
                image: AssetImage('assets/images/higala.png'),
                height: 300,
                width: 200,
              )),
            ],
          ),
        ],
      ),
    );
  }
}
