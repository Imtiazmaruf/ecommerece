import 'package:ecommerece/presentation/screens/email_verification_screen.dart';
import 'package:ecommerece/presentation/screens/home_screen.dart';
import 'package:ecommerece/presentation/widget/app_logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> _moveToNextScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.off(HomeScreen());
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _moveToNextScreen();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            Spacer(),
            Applogo(),
            Spacer(),
            CircularProgressIndicator(),
            SizedBox(height: 16,),
            Text('Version: 1.0.0.0'),
            SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}


