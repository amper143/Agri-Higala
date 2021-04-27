import 'package:flutter/material.dart';

class CustomerService extends StatefulWidget {
  @override
  _CustomerServiceState createState() => _CustomerServiceState();
}

class _CustomerServiceState extends State<CustomerService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        centerTitle: true,
        title: Text('Custom Service'),
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
                        'Technical Support',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )),
                )),
            Container(
              child: Image.asset('assets/images/customSer.png'),
            ),
            Container(
                padding: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.of(context).size.height / 2.5,
                child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Full name',
                    ))),
            SizedBox(height: 10),
            Container(
                padding: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.of(context).size.height / 2.5,
                child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email Address',
                    ))),
            SizedBox(height: 10),
            Container(
                padding: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.of(context).size.height / 2.5,
                child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Phone Number',
                    ))),
            SizedBox(height: 10),
            Container(
                height: 200,
                padding: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.of(context).size.height / 2.5,
                child: TextFormField(
                    maxLines: null,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Problem Description',
                    ))),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
              width: double.infinity,
              child: FlatButton(
                  color: Colors.green,
                  child: Text('Submit', style: TextStyle(color: Colors.white)),
                  onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
