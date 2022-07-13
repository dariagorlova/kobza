import 'package:flutter/material.dart';
import 'package:kobza/localization/localization.dart';

Future<void> showAlertDialog(BuildContext context, String title, String body) {
  return showDialog<void>(
    context: context,
    useRootNavigator: false,
    builder: (context) {
      final t = AppLocalizations.of(context);
      return AlertDialog(
        title: Text(title),
        content: Text(body),
        actions: [
          ElevatedButton(
            child: Text(t.okButtonTitle),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
