import 'package:agri_higala/models/auth.dart';
import 'package:flutter/material.dart';
import 'package:agri_higala/main.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool iconPassword = true;
  void passwordVisibility() {
    if (iconPassword == true) {
      setState(() {
        iconPassword = false;
      });
    } else {
      setState(() {
        iconPassword = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        centerTitle: true,
        title: Text('Create Account'),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 80),
          child: Card(
            elevation: 1,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.only(bottom: 30),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Form(
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(10)),
                            width: MediaQuery.of(context).size.height / 2.5,
                            child: TextFormField(
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Username',
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.black,
                                ),
                              ),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter username';
                                }
                                if (value.length < 6) {
                                  return 'Username must be 6 characters and above.';
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(10)),
                            width: MediaQuery.of(context).size.height / 2.5,
                            child: Container(
                              width: MediaQuery.of(context).size.height / 5,
                              child: TextFormField(
                                obscureText: iconPassword,
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  suffixIcon: InkWell(
                                    onTap: passwordVisibility,
                                    child: iconPassword
                                        ? Icon(
                                            Icons.visibility_off,
                                            color: Colors.black,
                                          )
                                        : Icon(
                                            Icons.visibility,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                  ),
                                  border: InputBorder.none,
                                  hintText: 'Password',
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Colors.black,
                                  ),
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter password';
                                  }
                                  if (value.length < 6) {
                                    return 'Password must be 6 characters and above.';
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(10)),
                            width: MediaQuery.of(context).size.height / 2.5,
                            child: Container(
                              width: MediaQuery.of(context).size.height / 5,
                              child: TextFormField(
                                obscureText: iconPassword,
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  suffixIcon: InkWell(
                                    onTap: passwordVisibility,
                                    child: iconPassword
                                        ? Icon(
                                            Icons.visibility_off,
                                            color: Colors.black,
                                          )
                                        : Icon(
                                            Icons.visibility,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                  ),
                                  border: InputBorder.none,
                                  hintText: 'Pass-Confirm',
                                  prefixIcon: Icon(
                                    Icons.lock_open,
                                    color: Colors.black,
                                  ),
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter password';
                                  }
                                  if (value.length < 6) {
                                    return 'Password must be 6 characters and above.';
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            child: FractionallySizedBox(
                              widthFactor: 1,
                              child: FlatButton(
                                  color: Colors.green,
                                  child: Text('NEXT',
                                      style: TextStyle(color: Colors.white)),
                                  onPressed: () {
                                    // var a = Auth();
                                    // a.signup("email", 'password', context);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SignPage1()));
                                  }),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> signup() {}
}

class SignUp3 extends StatefulWidget {
  @override
  _SignUp3State createState() => _SignUp3State();
}

class _SignUp3State extends State<SignUp3> {
  String astate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        centerTitle: true,
        title: Text(
          'Account Information',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(15),
          child: Card(
            elevation: 1,
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
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
                            hintText: 'First name',
                          ))),
                  SizedBox(height: 15),
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
                            hintText: 'Last name',
                          ))),
                  SizedBox(height: 15),
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
                            hintText: 'Birthdate',
                          ))),
                  SizedBox(height: 15),
                  Container(
                    alignment: AlignmentDirectional.center,
                    padding: const EdgeInsets.all(0.0),
                    child: FractionallySizedBox(
                      widthFactor: 1,
                      child: DropdownButton<String>(
                        value: astate,
                        style: TextStyle(color: Colors.black),
                        items: <String>[
                          'Male',
                          'Female',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        hint: Text(
                          "Gender",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        onChanged: (String value) {
                          setState(() {
                            astate = value;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
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
                            hintText: 'Email',
                          ))),
                  SizedBox(height: 15),
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
                            hintText: 'Block/Lot/Street',
                          ))),
                  SizedBox(height: 15),
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
                            hintText: 'Barangay',
                          ))),
                  SizedBox(height: 15),
                  FractionallySizedBox(
                    widthFactor: 1,
                    child: RaisedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.camera),
                        label: Text('Valid Id')),
                  ),
                  SizedBox(height: 15),
                  Container(
                      child: FractionallySizedBox(
                    widthFactor: 1,
                    child: FlatButton(
                        color: Colors.green,
                        child: Text('Create Account',
                            style: TextStyle(color: Colors.white)),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FirstScreen()));
                        }),
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SignPage2 extends StatefulWidget {
  @override
  _SignPage2State createState() => _SignPage2State();
}

class _SignPage2State extends State<SignPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: AppBar(
            automaticallyImplyLeading: false,
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
              ],
            )),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Card(
            elevation: 1,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.only(bottom: 30),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Form(
                        child: Column(
                      children: [
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
                                  hintText: 'Verification Code',
                                ))),
                        SizedBox(height: 10),
                        Container(
                            child: FractionallySizedBox(
                          widthFactor: 1,
                          child: FlatButton(
                              color: Colors.green,
                              child: Text('NEXT',
                                  style: TextStyle(color: Colors.white)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUp3()));
                              }),
                        )),
                      ],
                    )),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: RaisedButton.icon(
                            icon: Image.asset('assets/images/fb.png',
                                height: 25, width: 25),
                            label: Text('Facebook'),
                            onPressed: () {}),
                      ),
                      Container(
                        child: RaisedButton.icon(
                            icon: Image.asset('assets/images/google.png',
                                height: 25, width: 25),
                            label: Text('Google'),
                            onPressed: () {}),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SignPage1 extends StatefulWidget {
  @override
  _SignPage1State createState() => _SignPage1State();
}

class _SignPage1State extends State<SignPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: AppBar(
            automaticallyImplyLeading: false,
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
              ],
            )),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Card(
            elevation: 1,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.only(bottom: 30),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Form(
                        child: Column(
                      children: [
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
                            child: FractionallySizedBox(
                          widthFactor: 1,
                          child: FlatButton(
                              color: Colors.green,
                              child: Text('NEXT',
                                  style: TextStyle(color: Colors.white)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignPage2()));
                              }),
                        )),
                      ],
                    )),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: RaisedButton.icon(
                            icon: Image.asset('assets/images/fb.png',
                                height: 25, width: 25),
                            label: Text('Facebook'),
                            onPressed: () {}),
                      ),
                      Container(
                        child: RaisedButton.icon(
                            icon: Image.asset('assets/images/google.png',
                                height: 25, width: 25),
                            label: Text('Google'),
                            onPressed: () {}),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
