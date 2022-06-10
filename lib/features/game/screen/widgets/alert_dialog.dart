import 'package:flutter/material.dart';
import 'package:kobza/localization/localization.dart';

Future<void> showAlertDialog(BuildContext context, String title, String body) {
  return showDialog<void>(
    context: context,
    builder: (context) => _AlertDialog(
      title: title,
      body: body,
    ),
  );
}

class _AlertDialog extends StatelessWidget {
  const _AlertDialog({
    // ignore: unused_element
    super.key,
    required this.title,
    required this.body,
  });

  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
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
  }
}
