import 'package:agri_higala/seller/HomeSeller.dart';
import 'package:agri_higala/seller/SellerDrawMenu.dart';
import 'package:flutter/material.dart';

class MainSeller extends StatefulWidget {
  @override
  _MainSellerState createState() => _MainSellerState();
}

class _MainSellerState extends State<MainSeller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: AppBar(
            automaticallyImplyLeading: false,
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
                IconButton(
                    icon: Icon(
                      Icons.person_outline,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {}),
              ],
            )),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
            child: Card(
              elevation: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      icon: Icon(Icons.search, size: 40), onPressed: () {}),
                  IconButton(
                      icon: Icon(Icons.home, size: 35),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeSeller()));
                      }),
                  IconButton(
                      icon: Icon(Icons.notifications, size: 35),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(Icons.menu, size: 35),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SellerDrawMenu()));
                      }),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
