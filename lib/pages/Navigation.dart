import 'dart:ui';
import 'package:agri_higala/pages/CartPage.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:agri_higala/Constant.dart';
import '../widgets/ProductItem.dart';
import 'package:agri_higala/Providers/products.dart';
import '../widgets/badge.dart';
import '../Providers/cart.dart';
import './CartPage.dart';
import '../pages/Discount.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
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
    //final cart = Provider.of<Cart>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        shape: Border.all(),
        toolbarHeight: 45,
        backgroundColor: navcolor,
        elevation: 0,
        actions: <Widget>[
          IconButton(
              padding: EdgeInsets.only(right: 80),
              icon: Icon(Icons.search, color: Colors.black, size: 40),
              onPressed: () => createSearchDialog(context)),
          FlatButton(
            padding: EdgeInsets.only(right: 80),
            child: Text('Discount',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DiscountPage()));
            },
          ),
          Consumer<Cart>(
            builder: (_, cartData, los) => Badge(
              child: los,
              value: cartData.itemCount.toString(),
            ),
            child: IconButton(
              padding: EdgeInsets.only(right: 10),
              icon: Image.asset(
                'assets/images/cart.png',
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(CartPage.routeName);
              },
            ),
          ),
        ],
      ),
      body: ProductsGrid(),
    );
  }
}

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final prods = productsData.items;
    return GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: prods.length,
        itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
              value: prods[i],
              //(amp) => prods[i],
              child: ProductItem(
                  // prods[i].image,
                  // prods[i].id,
                  // prods[i].location,
                  // prods[i].name,
                  // prods[i].price
                  ),
            ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 30));
  }
}
