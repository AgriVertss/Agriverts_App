import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CreditLink extends StatelessWidget {
  const CreditLink({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'This is no Link, ',
            style: TextStyle(color: Colors.black),
          ),
          TextSpan(
            text: 'but this is',
            style: TextStyle(color: Colors.blue),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                launch('https://icons8.com');
              },
          ),
        ],
      ),
    );
  }
}
