import 'package:agri_higala/pages/LoginPage.dart';
import 'package:agri_higala/pages/ProfileNav.dart';
import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'package:agri_higala/pages/SignUp.dart';

class DrawMenu extends StatelessWidget {
  var loggedIn = false;
  DrawMenu(this.loggedIn);
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(180),
            child: AppBar(
              backgroundColor: Colors.white,
              toolbarHeight: 200,
              flexibleSpace: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                image: AssetImage('assets/images/home.png'),
                fit: BoxFit.fill,
              ))),
              title: Column(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                  ),
                  // !loggedIn?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FlatButton(
                          child: Text('Log In',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          }),
                      FlatButton(
                          child: Text('Sign In',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()));
                          }),
                    ],
                  )
                  // : Text(
                  //     "Welcome",
                  //     style: TextStyle(color: Colors.black),
                  //   )
                ],
              ),
            )),
        body: ProfileNav(),
      ),
    ));
  }
}
