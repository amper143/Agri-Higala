import 'package:agri_higala/Providers/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:agri_higala/main.dart';
import './CartPage.dart';
import '../pages/Inbox.dart';

class ProductDetails extends StatelessWidget {
  //final String name;

  //ProductDetails(this.name);
  static const routeName = '/ProductDetails';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as int;
    final loadProduct =
        Provider.of<Products>(context, listen: false).findById(productId);

    // for id
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          centerTitle: true,
          title: Text(loadProduct.name),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                child: Card(
                  elevation: 5,
                  child: Container(
                    width: double.infinity,
                    child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset(loadProduct.image)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: Card(
                  elevation: 2,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              Text('Product name: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text(loadProduct.name),
                            ]),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text('Location: ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text(loadProduct.location),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text('Price: ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text(loadProduct.price.toString() + '0'),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('Stock: ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text(loadProduct.stock.toString()),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text('Unit Type: ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text(loadProduct.unitType),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text('Date: ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text(loadProduct.date),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                  child: Card(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage:
                                    Image.network(loadProduct.sellerImage)
                                        .image,
                              ),
                              SizedBox(width: 5),
                              Text('Supplier: ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text(
                                loadProduct.seller,
                              ),
                              Spacer(),
                              Builder(builder: (context) {
                                return Flexible(
                                  fit: FlexFit.tight,
                                  child: IconButton(
                                      icon: Icon(
                                        Icons.thumb_up,
                                        color: Colors.green,
                                      ),
                                      onPressed: () {
                                        SnackBar mysnackbar = SnackBar(
                                            content: Text(
                                                'You have followed the seller'));
                                        Scaffold.of(context)
                                            .showSnackBar(mysnackbar);
                                      }),
                                );
                              }),
                              Flexible(
                                fit: FlexFit.tight,
                                child: IconButton(
                                    icon: Icon(
                                      Icons.chat,
                                      color: Colors.blue,
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  InboxMessage()));
                                    }),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.all(5),
                            child: Row(
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(4)),
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: Colors.blue[300],
                                      borderRadius: BorderRadius.circular(4)),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  child: FlatButton(
                                    color: Colors.yellow,
                                    child: Text('Add to Cart',
                                        style: TextStyle(color: Colors.white)),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  CartPage()));
                                    },
                                  ),
                                ),
                                FlatButton(
                                  color: Colors.green,
                                  child: Text('Go Back',
                                      style: TextStyle(color: Colors.white)),
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                FirstScreen()));
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 20),
                child: Card(
                  child: Image.network(loadProduct.map),
                ),
              )
            ],
          ),
        ));
  }
}
