import 'package:agri_higala/seller/MainSeller.dart';
import 'package:flutter/material.dart';

class SellerLogin extends StatefulWidget {
  @override
  _SellerLoginState createState() => _SellerLoginState();
}

class _SellerLoginState extends State<SellerLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
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
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Card(
            elevation: 1,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.only(bottom: 30),
                      child: Text(
                        'Login with your account',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Form(
                        child: Column(
                      children: [
                        Container(
                            padding: EdgeInsets.only(left: 15),
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(10)),
                            width: MediaQuery.of(context).size.height / 2.5,
                            child: TextFormField(
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Username',
                                ))),
                        SizedBox(height: 10),
                        Container(
                            padding: EdgeInsets.only(left: 15),
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(10)),
                            width: MediaQuery.of(context).size.height / 2.5,
                            child: TextFormField(
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Password',
                                ))),
                        SizedBox(height: 10),
                        Container(
                            child: FractionallySizedBox(
                          widthFactor: 1,
                          child: FlatButton(
                              color: Colors.green,
                              child: Text('LOGIN',
                                  style: TextStyle(color: Colors.white)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MainSeller()));
                              }),
                        )),
                      ],
                    )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
