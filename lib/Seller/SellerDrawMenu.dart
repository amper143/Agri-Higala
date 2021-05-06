import 'package:agri_higala/Seller/AddProduct.dart';
import 'package:agri_higala/Seller/MainSeller.dart';
import 'package:agri_higala/Seller/MyProduct.dart';
import 'package:agri_higala/Seller/ReturnSeller.dart';
import 'package:agri_higala/Seller/SellerCustomer.dart';
import 'package:agri_higala/Seller/SellerEarnings.dart';
import 'package:agri_higala/Seller/SellerInbox.dart';
import 'package:agri_higala/Seller/SellerOrder.dart';
import 'package:agri_higala/Seller/SellerRate.dart';
import 'package:flutter/material.dart';
import '../Seller/TransactionSeller.dart';

class SellerDrawMenu extends StatelessWidget {
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
                ],
              )),
        ),
        body: ListView(
          addAutomaticKeepAlives: false,
          padding: EdgeInsets.all(8.0),
          children: [
            ListTile(
              leading:
                  Image.asset('assets/images/balay.png', height: 30, width: 30),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => MainSeller()));
              },
              title: Text(
                'Home',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            ListTile(
              leading:
                  Image.asset('assets/images/cart.png', height: 30, width: 30),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyProduct()));
              },
              title: Text(
                'My Product',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            ListTile(
              leading: Image.asset('assets/images/addProduct.png',
                  height: 30, width: 30),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddProduct()));
              },
              title: Text('Add Product',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Divider(),
            ListTile(
              leading:
                  Image.asset('assets/images/order.png', height: 30, width: 30),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SellerOrder()));
              },
              title: Text(
                'My Order',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            ListTile(
              leading: Image.asset('assets/images/history.png',
                  height: 30, width: 30),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SellerTrans()));
              },
              title: Text(
                'History',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            ListTile(
              leading: Image.asset('assets/images/return.png',
                  height: 30, width: 30),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SellerReturn()));
              },
              title: Text(
                'Return',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            ListTile(
              leading:
                  Image.asset('assets/images/rate.png', height: 30, width: 30),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SellerRate()));
              },
              title: Text(
                'Ratings',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            ListTile(
              leading:
                  Image.asset('assets/images/earn.png', height: 30, width: 30),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SellerEarn()));
              },
              title: Text(
                'Earnings',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            ListTile(
              leading: Image.asset('assets/images/message.png',
                  height: 30, width: 30),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SellerInbox()));
              },
              title: Text(
                'Inbox',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            ListTile(
              leading: Image.asset('assets/images/contact.png',
                  height: 30, width: 30),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SellerCustomer()));
              },
              title: Text(
                'Customer Service',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ));
  }
}
