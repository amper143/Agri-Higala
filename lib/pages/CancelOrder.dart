import 'package:flutter/material.dart';

enum LogOutAction { yes, cancel }

class Cancel {
  static Future<LogOutAction> yesCancelDialog(
    BuildContext context,
    String title,
    String body,
  ) async {
    final action = await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            title: Text(title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                )),
            content: Text(body, style: TextStyle(color: Colors.black)),
            actions: [
              FlatButton(
                  onPressed: () => Navigator.of(context).pop(LogOutAction.yes),
                  child: Text(
                    'Confirm',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )),
              FlatButton(
                  onPressed: () =>
                      Navigator.of(context).pop(LogOutAction.cancel),
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  )),
            ],
          );
        });
    return (action != null) ? action : LogOutAction.cancel;
  }
}
