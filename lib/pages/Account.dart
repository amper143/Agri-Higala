import 'package:agri_higala/pages/ProfileUpdate.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  String valueChoose;
  List listItem = ['Male', 'Female'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        centerTitle: true,
        title: Text('Account'),
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
                        padding: EdgeInsets.fromLTRB(40, 10, 20, 0),
                        child: Image.asset(
                          'assets/images/person.png',
                          height: 80,
                          width: 80,
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.fromLTRB(50, 5, 20, 5),
                          child: FlatButton(
                            color: Colors.green,
                            child: Text(
                              'Update',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProfileUpdate()));
                            },
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
                              Text('John Doe'),
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
                              Text('March 2019 '),
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
                        Text('First name'),
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
                                  hintText: 'John',
                                ))),
                        Text('Last name'),
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
                                hintText: 'Doe',
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
                                hintText: 'Zone 1',
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
                                hintText: 'Lumbia',
                              )),
                        ),
                        Text('Birthday'),
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
                                hintText: 'January 1 1998',
                              )),
                        ),
                        Text('Gender'),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black, width: 1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Container(
                                  padding: EdgeInsets.only(left: 15),
                                  child: DropdownButton(
                                      underline: SizedBox(),
                                      isExpanded: true,
                                      dropdownColor: Colors.grey[200],
                                      hint: Text('Gender',
                                          style: TextStyle(color: Colors.black),
                                          textAlign: TextAlign.center),
                                      value: valueChoose,
                                      onChanged: (newValue) {
                                        setState(() {
                                          valueChoose = newValue;
                                        });
                                      },
                                      items: listItem.map((valueItem) {
                                        return DropdownMenuItem(
                                          value: valueItem,
                                          child: Text(valueItem),
                                        );
                                      }).toList()),
                                ),
                              ),
                            ),
                          ),
                        ),
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
                                hintText: 'JohnDoe@gmail.com',
                              )),
                        ),
                        Container(
                            child: FractionallySizedBox(
                          widthFactor: .9,
                          child: FlatButton(
                              color: Colors.green,
                              child: Text('Save',
                                  style: TextStyle(color: Colors.white)),
                              onPressed: () {}),
                        )),
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
