import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

// import 'http_error/http_exception.dart';
// import 'package:my_app/textWid/textO.dart';

class Auth with ChangeNotifier {
  var isLog;
  var isReg;
  String _token;
  DateTime _expiryDate;
  String _userId;

  String validateStatus;

  bool get isAuth {
    return token != null;
  }

  String get getToken {
    return _token;
  }

  String get getDuration {
    return _expiryDate.toString();
  }

  String get getUserID {
    return _userId;
  }

  String get token {
    if (_expiryDate != null &&
        _expiryDate.isAfter(DateTime.now()) &&
        _token != null) {
      return _token;
    }
    return null;
  }

  Future<void> validate(String token, BuildContext context, String em) async {
    validateStatus = "";
    print(em);
    try {
      final url =
          "https://baryo-e2c0c-default-rtdb.firebaseio.com/users.json?auth=$token";
      var response = await http.get(url);

      final extractedData = json.decode(response.body) as Map<String, dynamic>;

      //print("data extracted $extractedData");

      extractedData.forEach((id, data) {
        print(validateStatus);
        if (data['email'] == em) {
          print('Truelala');
          if (data['sTatus'] == "pending") {
            print("pending pa account");
            validateStatus = 'pending';
            return;
          } else if (data['sTatus'] == "validated") {
            print("validated na");

            validateStatus = 'validated';
            return;
          } else if (data['sTatus'] == "bdrrmc") {
            print("bdrrmc");
            validateStatus = 'bdrrmc';
          } else if (data['sTatus'] == "super") {
            validateStatus = 'super';
          }
        } else {
          return;
        }
      });
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> _authenticate(String email, String password, String urlSegment,
      BuildContext context) async {
    isReg = null;
    isLog = null;

    final url =
        'https://identitytoolkit.googleapis.com/v1/accounts:$urlSegment?key=AIzaSyCTXHSGfCG3UrT3g7Lg2vc9kK-U60_6c7Y';
    try {
      final response = await http.post(
        url,
        body: json.encode(
          {'email': email, 'password': password, 'returnSecureToken': true},
        ),
      );
      final responseData = json.decode(response.body);
      if (responseData['error'] != null) {
        print("asdasds");
        // throw HttpException(responseData['error']['message']);
      }
      _token = responseData['idToken'];
      _userId = responseData['localId'];
      _expiryDate = DateTime.now().add(
        Duration(seconds: int.parse(responseData['expiresIn'])),
      );
      print(json.decode(response.body));
      // print(_token);
      // print(_userId);
      isLog = true;
      isReg = true;
    } catch (e) {
      isLog = false;
      isReg = false;

      print(e);
      if (e.toString() == "EMAIL_EXISTS") {
        print("NARA ang error");
        showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
                  title: Text("error"),
                  content: Text("EMAIL EXIST"),
                  actions: <Widget>[
                    RaisedButton(
                        onPressed: () => Navigator.of(ctx).pop(),
                        child: Text("OK"))
                  ],
                ));
      } else if (e.toString() == "INVALID_EMAIL") {
        print("NARA ang error");
        showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
                  title: Text("error"),
                  content: Text("INVALID_EMAIL"),
                  actions: <Widget>[
                    RaisedButton(
                        onPressed: () => Navigator.of(ctx).pop(),
                        child: Text("OK"))
                  ],
                ));
      } else if (e.toString() == "INVALID_PASSWORD") {
        print("NARA ang error");
        showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
                  title: Text("error"),
                  content: Text("INVALID_PASSWORD"),
                  actions: <Widget>[
                    RaisedButton(
                        onPressed: () => Navigator.of(ctx).pop(),
                        child: Text("OK"))
                  ],
                ));
      } else if (e.toString() == "EMAIL_NOT_FOUND") {
        showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
                  title: Text("error"),
                  content: Text("This email is not yet registered"),
                  actions: <Widget>[
                    RaisedButton(
                        onPressed: () => Navigator.of(ctx).pop(),
                        child: Text("OK"))
                  ],
                ));
      } else {
        showDialog(
            context: context,
            builder: (ctx) => AlertDialog(
                  title: Text("Failed"),
                  content: Text("Please check your network"),
                  actions: <Widget>[
                    RaisedButton(
                        onPressed: () => Navigator.of(ctx).pop(),
                        child: Text("OK"))
                  ],
                ));
      }
    }
  }

  Future<bool> signup(
      String email, String password, BuildContext context) async {
    await _authenticate(email, password, 'signUp', context);
    if (isLog) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> login(
      String email, String password, BuildContext context) async {
    await _authenticate(email, password, 'signInWithPassword', context);

    if (isReg) {
      return true;
    } else {
      return false;
    }
  }
}
