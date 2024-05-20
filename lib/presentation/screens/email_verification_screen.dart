import 'package:ecommerece/presentation/screens/otp_verification_screen.dart';
import 'package:ecommerece/presentation/widget/app_logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {


  final TextEditingController _emailTEController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(

              children: [
                const SizedBox(height: 100,),
                Applogo(),
                SizedBox(height: 16,),
                Text('Welcome Back', style : textTheme.headlineLarge,),
                SizedBox(height: 4),
                Text('Enter Your Email Address',
                  style: textTheme.headlineSmall,
                ),
                SizedBox(height: 24),
                TextFormField(
                  controller: _emailTEController,
                  decoration: InputDecoration(
                    hintText: 'Email'
                  ),
                ),
                SizedBox(height: 8),
                ElevatedButton(onPressed: (){
                  Get.to(OtpVerificationScreen(email : _emailTEController.text));
                },
                    child: Text('Next'),),
          
              ],
            ),
          ),
        ),
      ),
    );
  }
  @override
  void dispose() {
    _emailTEController.dispose();
    super.dispose();
  }
}
