import 'package:flutter/material.dart';
import 'package:agri_higala/Constant.dart';
import 'package:agri_higala/pages/ProfileList.dart';
import 'package:provider/provider.dart';
import './CartPage.dart';
import '../Providers/cart.dart';
import '../widgets/badge.dart';

class ProfileNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        shape: Border.all(),
        toolbarHeight: 45,
        backgroundColor: navcolor,
        elevation: 0,
        actions: <Widget>[
          Wrap(
            spacing: 50,
            children: [
              IconButton(
                icon: Image.asset(
                  'assets/images/out.png',
                ),
                onPressed: () {},
              ),
              Consumer<Cart>(
                builder: (_, cartData, los) => Badge(
                  child: los,
                  value: cartData.itemCount.toString(),
                ),
                child: IconButton(
                  icon: Image.asset(
                    'assets/images/cart.png',
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CartPage()));
                  },
                ),
              ),
              IconButton(
                icon: Image.asset(
                  'assets/images/message.png',
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset('assets/images/alert.png'),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
      body: ProfileList(),
    );
  }
}
