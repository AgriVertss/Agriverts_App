import 'package:agriverts/core/constants/text_constants.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';

class EmailConfirmationView extends StatefulWidget {
  const EmailConfirmationView({Key? key}) : super(key: key);

  @override
  State<EmailConfirmationView> createState() => _EmailConfirmationViewState();
}

class _EmailConfirmationViewState extends State<EmailConfirmationView> {
  @override
  void initState() {
    super.initState();
    initDynamicLinks();
  }

  void initDynamicLinks() async {
    final PendingDynamicLinkData? data =
        await FirebaseDynamicLinks.instance.getInitialLink();
    final Uri? deepLink = data?.link;

    if (deepLink != null) {
      Navigator.pushNamed(context, deepLink.path);
    }

    FirebaseDynamicLinks.instance.onLink
        .listen((PendingDynamicLinkData dynamicLink) {
      // ignore: unused_local_variable
      final Uri deepLink = dynamicLink.link;
    }).onDone(() {
      if (deepLink != null) {
        Navigator.pushReplacementNamed(context, deepLink.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.email_outlined),
          Text(TextConstants.checkEmail),
        ],
      ),
    );
  }
}
