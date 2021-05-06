import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class FeedbackPage extends StatefulWidget {
  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  double rating = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          centerTitle: true,
          title: Text('Feedback'),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text('Please rate our App!!'),
                      Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                      SmoothStarRating(
                        starCount: 5,
                        isReadOnly: false,
                        size: 50,
                        color: Colors.yellowAccent,
                        borderColor: Colors.black,
                        onRated: (value) {
                          setState(() {
                            rating = value;
                            print('Rating is : $rating');
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Builder(builder: (context) {
              return Container(
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text('Please leave a comment below '),
                        Divider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                        Container(
                            height: 200,
                            padding: EdgeInsets.only(left: 15),
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(10)),
                            width: MediaQuery.of(context).size.height / 1,
                            child: TextFormField(
                                maxLines: null,
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Problem Description',
                                ))),
                        SizedBox(height: 10),
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          width: double.infinity,
                          child: FlatButton(
                              color: Colors.green,
                              child: Text('Submit',
                                  style: TextStyle(color: Colors.white)),
                              onPressed: () {
                                SnackBar mysnackbar = SnackBar(
                                    content:
                                        Text('Thank you for your Feedback!'));
                                Scaffold.of(context).showSnackBar(mysnackbar);
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ]),
        ));
  }
}
