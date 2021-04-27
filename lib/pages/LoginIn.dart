import 'package:agri_higala/models/auth.dart';
import 'package:agri_higala/pages/DrawMenu.dart';
import 'package:flutter/material.dart';
import 'package:agri_higala/pages/SignUp.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  String username;
  String password;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Card(
          elevation: 1,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(20)),
                            width: MediaQuery.of(context).size.height / 2.5,
                            child: TextFormField(
                              onSaved: (value) {
                                username = value;
                              },
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
                                borderRadius: BorderRadius.circular(20)),
                            width: MediaQuery.of(context).size.height / 2.5,
                            child: Container(
                              width: MediaQuery.of(context).size.height / 5,
                              child: TextFormField(
                                onSaved: (value) {
                                  password = value;
                                },
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FlatButton(
                                  child: Text('Remember me',
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.underline)),
                                  onPressed: () {}),
                              FlatButton(
                                  child: Text('Forget password',
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.underline)),
                                  onPressed: () {}),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Container(
                              child: FractionallySizedBox(
                            widthFactor: 0.7,
                            child: FlatButton.icon(
                              color: Colors.green,
                              icon: Icon(
                                Icons.person_add,
                                color: Colors.white,
                              ),
                              label: Text('login',
                                  style: TextStyle(color: Colors.white)),
                              onPressed: login,
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => SignUp()));
                            ),
                          )),
                          Container(
                              child: FractionallySizedBox(
                            widthFactor: 0.7,
                            child: FlatButton.icon(
                                color: Colors.blue,
                                icon: Image.asset('assets/images/fb.png',
                                    height: 24, width: 24),
                                label: Text('Login with Facebook',
                                    style: TextStyle(color: Colors.white)),
                                onPressed: () {}),
                          )),
                          Container(
                              child: FractionallySizedBox(
                            widthFactor: 0.7,
                            child: FlatButton.icon(
                                color: Colors.red[300],
                                icon: Image.asset('assets/images/google.png',
                                    height: 25, width: 25),
                                label: Text('Login with Google',
                                    style: TextStyle(color: Colors.white)),
                                onPressed: () {}),
                          )),
                        ],
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> login() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      print(username);
      print(password);
      try {
        var auth = Auth();
        var login = await auth.login(username, password, context);
        if (login) {
          print('success');
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DrawMenu(true)));
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => SignPage1()));
        }
      } catch (e) {
        print(e);
      }
    }
  }
}
