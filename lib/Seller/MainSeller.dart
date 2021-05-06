import 'package:agri_higala/Seller/SellerAccount.dart';
import 'package:agri_higala/Seller/SellerNotification.dart';
import 'package:agri_higala/seller/HomeSeller.dart';
import 'package:agri_higala/seller/SellerDrawMenu.dart';
import 'package:flutter/material.dart';

class MainSeller extends StatefulWidget {
  @override
  _MainSellerState createState() => _MainSellerState();
}

class _MainSellerState extends State<MainSeller> {
  String radioButtonItem = 'Category';
  int id = 1;
  createSearchDialog(BuildContext context) {
    TextEditingController customController = TextEditingController();
    return showDialog(
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            child: AlertDialog(
              insetPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 150),
              title: Container(
                alignment: Alignment.center,
                child: Text(
                  'Search',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              content: Column(
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(10)),
                      width: MediaQuery.of(context).size.height / 2.5,
                      child: TextFormField(
                          controller: customController,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            icon: Icon(Icons.search),
                            border: InputBorder.none,
                            hintText: 'Search Here',
                          ))),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Radio(
                        value: 1,
                        groupValue: id,
                        onChanged: (val) {
                          setState(() {
                            radioButtonItem = 'ONE';
                            id = 1;
                          });
                        },
                      ),
                      Text(
                        'Category',
                        style:
                            new TextStyle(fontSize: 17.0, color: Colors.black),
                      ),
                      Radio(
                        value: 2,
                        groupValue: id,
                        onChanged: (val) {
                          setState(() {
                            radioButtonItem = 'TWO';
                            id = 2;
                          });
                        },
                      ),
                      Text(
                        'Price',
                        style:
                            new TextStyle(fontSize: 17.0, color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Radio(
                        value: 3,
                        groupValue: id,
                        onChanged: (val) {
                          setState(() {
                            radioButtonItem = 'ONE';
                            id = 4;
                          });
                        },
                      ),
                      Text(
                        'Barangay',
                        style:
                            new TextStyle(fontSize: 17.0, color: Colors.black),
                      ),
                      Radio(
                        value: 4,
                        groupValue: id,
                        onChanged: (val) {
                          setState(() {
                            radioButtonItem = 'TWO';
                            id = 4;
                          });
                        },
                      ),
                      Text(
                        'Discount',
                        style:
                            new TextStyle(fontSize: 17.0, color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                      child: FractionallySizedBox(
                    widthFactor: 1,
                    child: FlatButton(
                        color: Colors.green,
                        child: Text('Search',
                            style: TextStyle(color: Colors.white)),
                        onPressed: () {}),
                  )),
                ],
              ),
            ),
          );
        });
  }

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
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SellerAccount()));
                    }),
              ],
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
              child: Card(
                elevation: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        icon: Icon(Icons.search, size: 40),
                        onPressed: () => createSearchDialog(context)),
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
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SellerNotify()));
                        }),
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
            ),
            Container(
                margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Card(
                  color: Colors.green,
                  elevation: 1,
                  child: Container(
                      height: 40,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        'Products',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
                      )),
                )),
            Container(
              margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            child: Image.asset('assets/images/avocado.jpg'),
                          ),
                          Text('Avocado'),
                          Text('P 40.00 per Kilo'),
                        ],
                      ),
                      SizedBox(width: 15),
                      Column(
                        children: [
                          Container(
                              width: 150,
                              height: 150,
                              child: Image.asset('assets/images/kalabasa.jpg')),
                          Text('Kalabasa'),
                          Text('P 10.00 per Kilo'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            child: Image.asset('assets/images/watermelon.jpg'),
                          ),
                          Text('Watermelon'),
                          Text('P 30.00 per Kilo'),
                        ],
                      ),
                      SizedBox(width: 15),
                      Column(
                        children: [
                          Container(
                              width: 150,
                              height: 150,
                              child:
                                  Image.asset('assets/images/pineapple.jpg')),
                          Text('Pineapple'),
                          Text('P 20.00 per Pieces'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
