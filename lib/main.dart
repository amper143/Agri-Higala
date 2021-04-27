import 'package:agri_higala/Providers/cart.dart';
import 'package:agri_higala/Seller/OrderDetails.dart';
import 'package:agri_higala/pages/DrawMenu.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:provider/provider.dart';
import 'package:agri_higala/pages/Navigation.dart';
import 'package:flutter/material.dart';
import 'pages/landing.dart';
import './pages/ProductDetails.dart';
import 'package:agri_higala/Providers/products.dart';
import './pages/CartPage.dart';
import './Providers/Order.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
        ChangeNotifierProvider.value(
          value: Orders(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter App',
        theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.white),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        home: LandingPage(),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(150),
            child: AppBar(
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
                    IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DrawMenu(false)));
                        }),
                  ],
                )),
          ),
          body: NavBar(),
        ),
        routes: {
          ProductDetails.routeName: (ctx) => ProductDetails(),
          CartPage.routeName: (ctx) => CartPage(),
          OrderDetails.routeName: (ctx) => OrderDetails(),
        });
  }
}
