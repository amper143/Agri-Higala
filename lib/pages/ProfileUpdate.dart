import 'package:flutter/material.dart';

class ProfileUpdate extends StatefulWidget {
  @override
  _ProfileUpdateState createState() => _ProfileUpdateState();
}

class _ProfileUpdateState extends State<ProfileUpdate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        centerTitle: true,
        title: Text('Profile Update'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Card(
                  elevation: 5,
                  child: Container(
                      height: 40,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        'Profile Picture',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )),
                )),
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Card(
                elevation: 5,
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                    ),
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/person.png',
                      height: 150,
                      width: 150,
                    )),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text('Select Profile Picture',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: FractionallySizedBox(
                          widthFactor: .4,
                          child: FlatButton(
                              color: Colors.green,
                              child: Text(
                                'Upload',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {}),
                        ),
                      ),
                      Text('Or',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                      Container(
                        child: FractionallySizedBox(
                          widthFactor: .4,
                          child: FlatButton(
                              color: Colors.green,
                              child: Text('Take Photo',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                              onPressed: () {}),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.black,
                      ),
                      Container(
                        child: FractionallySizedBox(
                          widthFactor: .4,
                          child: FlatButton(
                              color: Colors.green,
                              child: Text('Save',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                              onPressed: () {}),
                        ),
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
