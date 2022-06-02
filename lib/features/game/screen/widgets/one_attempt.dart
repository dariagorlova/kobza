import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OneAttempt extends StatefulWidget {
  const OneAttempt({
    super.key,
  });

  @override
  State<OneAttempt> createState() => _OneAttemptState();
}

class _OneAttemptState extends State<OneAttempt> {
  // TextEditingController textEditingController = TextEditingController();

  // String currentText = '';
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 5,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 50,
        fieldWidth: 40,
        activeFillColor: Colors.white,
        selectedFillColor: Colors.white,
        inactiveFillColor: Colors.white,
        activeColor: Theme.of(context).primaryColor,
        selectedColor: Theme.of(context).primaryColor,
        inactiveColor: Theme.of(context).primaryColor,
      ),
      cursorColor: Colors.black,
      animationDuration: const Duration(milliseconds: 300),
      // controller: textEditingController,
      keyboardType: TextInputType.none,
      onChanged: (value) {
        // setState(() {
        //   currentText = value;
        // });
      },
    );
  }
}
