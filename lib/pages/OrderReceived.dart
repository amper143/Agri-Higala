import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class OrderReceive extends StatefulWidget {
  @override
  _OrderReceiveState createState() => _OrderReceiveState();
}

class _OrderReceiveState extends State<OrderReceive> {
  Future<String> createMessageDialog(BuildContext context) {
    TextEditingController messageController = new TextEditingController();
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              'Comment',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
            ),
            content: TextField(
              style: TextStyle(color: Colors.black),
              controller: messageController,
            ),
            actions: [
              MaterialButton(
                  elevation: 5,
                  child: Text('Submit'),
                  onPressed: () {
                    Navigator.of(context)
                        .pop(messageController.text.toString());
                  })
            ],
          );
        });
  }

  double rating = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          centerTitle: true,
          title: Text('My Order'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Card(
                    elevation: 1,
                    child: Container(
                        height: 40,
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: Text(
                          'Order Received',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        )),
                  )),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Card(
                  child: Row(
                    children: [
                      Container(
                          padding: EdgeInsets.fromLTRB(5, 5, 10, 5),
                          width: 170,
                          height: 170,
                          child: Image.asset(
                            'assets/images/avocado.jpg',
                            fit: BoxFit.fill,
                          )),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('Supplier: ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text('Allan Bong')
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text('Product: ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text('Avocado')
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text('Price: ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text('120.00')
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text('Quantity: ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text('1')
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text('Unit: ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text('Kilo')
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text('Shipping Fee: ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text('50.00')
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text('Total : ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text('150.00')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SmoothStarRating(
                        starCount: 5,
                        isReadOnly: false,
                        size: 30,
                        color: Colors.redAccent,
                        borderColor: Colors.redAccent,
                        onRated: (value) {
                          setState(() {
                            rating = value;
                            print('Rating is : $rating');
                          });
                        },
                      ),
                      Builder(builder: (context) {
                        return Container(
                          child: FlatButton(
                              color: Colors.blue,
                              child: Text(
                                'Comment',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {
                                createMessageDialog(context).then((value) {
                                  SnackBar mySnackbar = SnackBar(
                                      content:
                                          Text('Thank You for your Comment'));
                                  Scaffold.of(context).showSnackBar(mySnackbar);
                                });
                              }),
                        );
                      })
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
