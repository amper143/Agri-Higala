import 'package:agri_higala/pages/AboutUs.dart';
import 'package:agri_higala/pages/Account.dart';
import 'package:agri_higala/pages/ContactUs.dart';
import 'package:agri_higala/pages/CustomerService.dart';
import 'package:agri_higala/pages/Feedback.dart';
import 'package:agri_higala/pages/MyOrder.dart';
import 'package:agri_higala/seller/SellerSign.dart';
import 'package:agri_higala/pages/TransactionHistory.dart';
import 'package:flutter/material.dart';

class ProfileList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      addAutomaticKeepAlives: false,
      padding: EdgeInsets.all(8.0),
      children: [
        ListTile(
          leading:
              Image.asset('assets/images/balay.png', height: 30, width: 30),
          onTap: () {},
          title: Text(
            'Home',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Divider(),
        ListTile(
          leading:
              Image.asset('assets/images/discount.png', height: 30, width: 30),
          onTap: () {},
          title:
              Text('Discount', style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        Divider(),
        ListTile(
          leading:
              Image.asset('assets/images/order.png', height: 30, width: 30),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyOrder()));
          },
          title: Text(
            'Order',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Divider(),
        ListTile(
          leading:
              Image.asset('assets/images/history.png', height: 30, width: 30),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Transaction()));
          },
          title: Text(
            'History',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Divider(),
        ListTile(
          leading:
              Image.asset('assets/images/account.png', height: 30, width: 30),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AccountPage()));
          },
          title: Text(
            'Account',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Divider(),
        ListTile(
          leading:
              Image.asset('assets/images/setting.png', height: 30, width: 30),
          onTap: () {},
          title: Text(
            'Setting',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Divider(),
        ListTile(
          leading:
              Image.asset('assets/images/feedback.png', height: 30, width: 30),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => FeedbackPage()));
          },
          title: Text(
            'Feedback',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Divider(),
        ListTile(
          leading:
              Image.asset('assets/images/about.png', height: 30, width: 30),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AboutUs()));
          },
          title: Text(
            'About Us',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Divider(),
        ListTile(
          leading:
              Image.asset('assets/images/contact.png', height: 30, width: 30),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ContactUS()));
          },
          title: Text(
            'Contact Us',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Divider(),
        ListTile(
          leading:
              Image.asset('assets/images/service.png', height: 30, width: 30),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CustomerService()));
          },
          title: Text(
            'Customer Services',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Divider(),
        ListTile(
          leading: Image.asset('assets/images/shop.png', height: 30, width: 30),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SellerLogin()));
          },
          title: Text(
            'Log in as Seller',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
