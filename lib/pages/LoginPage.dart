import 'package:agri_higala/pages/LoginIn.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            toolbarHeight: 200,
            flexibleSpace: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
              image: AssetImage('assets/images/home.png'),
              fit: BoxFit.fill,
            ))),
            title: Row(
              children: <Widget>[
                Expanded(
                    child: Image.asset(
                  'assets/images/logo.png',
                  alignment: Alignment.centerLeft,
                  height: 150,
                )),
                Expanded(
                    child: Image.asset(
                  'assets/images/higala.png',
                  alignment: Alignment.centerLeft,
                  height: 150,
                )),
              ],
            )),
      ),
      body: Login(),
    );
  }
}
