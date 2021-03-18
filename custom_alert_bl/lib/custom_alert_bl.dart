library custom_alert_bl;

import 'package:flutter/material.dart';

/// A Calculator.
class CustomAlertBox {
  static Future showCustomAlertBox(
      {@required BuildContext context, @required Widget willDisplayWidget}) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                willDisplayWidget,
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Close alert'),
                )
              ],
            ),
          );
        });
  }
}
