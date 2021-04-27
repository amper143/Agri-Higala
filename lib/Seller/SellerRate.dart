import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class SellerRate extends StatefulWidget {
  @override
  _SellerRateState createState() => _SellerRateState();
}

class _SellerRateState extends State<SellerRate> {
  double rating;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        centerTitle: true,
        title: Text('Ratings'),
      ),
      body: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
            child: Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SmoothStarRating(
                      starCount: 5,
                      isReadOnly: false,
                      size: 50,
                      color: Colors.blue,
                      borderColor: Colors.black,
                      onRated: (value) {
                        setState(() {
                          rating = value;
                          print('Rating is : $rating');
                        });
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Rate: ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text('4.00'),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.green,
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Evaluation',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('Order Id: ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text('AV102'),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text('Buyer Id: ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text('123456'),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text('Name: ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text('Allan Amper'),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text('Ratings: ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text('4.00'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Text('Comments',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Container(
                              height: 100,
                              padding: EdgeInsets.only(left: 15),
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(10)),
                              width: MediaQuery.of(context).size.height / 4.5,
                              child: TextFormField(
                                  maxLines: null,
                                  style: TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: '...',
                                  ))),
                          Container(
                            width: 150,
                            child: FlatButton(
                                color: Colors.green,
                                onPressed: () {},
                                child: Text(
                                  'Reply',
                                  style: TextStyle(color: Colors.white),
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
