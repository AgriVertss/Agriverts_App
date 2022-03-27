import 'package:agriverts/core/constants/app_constants.dart';
import 'package:agriverts/product/init/init_app.dart';
import 'package:agriverts/product/navigation/route.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(milliseconds: 1500),
      () {
        initializeApp();
        checkAuthAndReplace();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AspectRatio(
          aspectRatio: 1.5,
          child: Image.asset(
            AppConstant.splashAssetPath,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }

  void checkAuthAndReplace() async {
    await Firebase.initializeApp();
    if (FirebaseAuth.instance.currentUser != null) {
      context.router.replace(HomeView());
    } else {
      context.router.replace(AuthView());
    }
  }
}
