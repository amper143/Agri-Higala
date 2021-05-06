import 'package:flutter/material.dart';

class SellerAccount extends StatefulWidget {
  @override
  _SellerAccountState createState() => _SellerAccountState();
}

class _SellerAccountState extends State<SellerAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        centerTitle: true,
        title: Text('Seller Account'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Card(
                elevation: 5,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: Image.asset(
                          'assets/images/seller.jpg',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                          child: FlatButton(
                            color: Colors.green,
                            child: Text(
                              'Update',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {},
                          )),
                    ]),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 50, 5, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Name: ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text('Abel Gatchalian'),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                'Followers: ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text('4'),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                'Joined: ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text('March 2021 '),
                              Icon(Icons.edit)
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              width: double.infinity,
              child: Card(
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text('Email'),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                            padding: EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(10)),
                            width: MediaQuery.of(context).size.height / 2.5,
                            child: TextFormField(
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Abelgat@gmail.com',
                                ))),
                        Text('Mobile Number'),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(10)),
                          width: MediaQuery.of(context).size.height / 2.5,
                          child: TextFormField(
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '09965812341',
                              )),
                        ),
                        Text('Street/Purok/Barangay'),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(10)),
                          width: MediaQuery.of(context).size.height / 2.5,
                          child: TextFormField(
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Zone 1 Blk 1 Lot2',
                              )),
                        ),
                        Text('Barangay'),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(10)),
                          width: MediaQuery.of(context).size.height / 2.5,
                          child: TextFormField(
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Carmen',
                              )),
                        ),
                        Text('Schedule online time'),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(10)),
                          width: MediaQuery.of(context).size.height / 2.5,
                          child: TextFormField(
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '1:00 - 4:00 pm',
                              )),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Description'),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(10)),
                          width: MediaQuery.of(context).size.height / 2.5,
                          child: TextFormField(
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Freash and affordable products',
                              )),
                        ),
                        Builder(builder: (context) {
                          return Container(
                              child: FractionallySizedBox(
                            widthFactor: .9,
                            child: FlatButton(
                                color: Colors.green,
                                child: Text('Save',
                                    style: TextStyle(color: Colors.white)),
                                onPressed: () {
                                  SnackBar mysnackbar = SnackBar(
                                      content: Text(
                                          'Your information has been save!'));
                                  Scaffold.of(context).showSnackBar(mysnackbar);
                                }),
                          ));
                        }),
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
