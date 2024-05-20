import 'package:ecommerece/presentation/screens/complete_profile_screen.dart';
import 'package:ecommerece/presentation/utility/app_colours.dart';
import 'package:ecommerece/presentation/widget/app_logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationScreen extends StatefulWidget {
  final String email;
  const OtpVerificationScreen({super.key, required this.email});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {


  final TextEditingController _otpTEController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 100,),
                const Applogo(),
                const SizedBox(height: 16,),
                Text('Enter OTP Code', style : textTheme.headlineLarge,),
                const SizedBox(height: 4),
                Text('A 4 digit otp code has been sent',
                  style: textTheme.headlineSmall,
                ),
                const SizedBox(height: 24),
                _buildPinCodeTextField(context),
                const SizedBox(height: 8),
                ElevatedButton(onPressed: (){
                  Get.to(CompleteProfileScreen());
                },
                    child: const Text('Next'),),
                const SizedBox(height: 16,),
                _buildResendCodeMessage(),
                TextButton(onPressed: (){},
                    child: const Text('Resend Code'),),
          
              ],
            ),
          ),
        ),
      ),
    );
  }

  RichText _buildResendCodeMessage() {
    return  RichText(
            text: const TextSpan(
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400
            ),
            children: [
              TextSpan(
                text: 'This code will expire in'
              ),
              TextSpan(
                text: '120s',style: TextStyle(
                  color:AppColors.primaryColor )
              )
            ]
          ),
          );
  }

  PinCodeTextField _buildPinCodeTextField(BuildContext context) {
    return PinCodeTextField(
            length: 6,
            obscureText: false,
            animationType: AnimationType.fade,
            keyboardType: TextInputType.number,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(5),
              fieldHeight: 50,
              fieldWidth: 40,
              activeFillColor: Colors.white,
              inactiveFillColor: Colors.transparent,
              selectedFillColor: Colors.white
            ),
            animationDuration: const Duration(milliseconds: 300),
            backgroundColor: Colors.blue.shade50,
            enableActiveFill: true,
            controller: _otpTEController,
            appContext: context,

          );
  }
  @override
  void dispose() {
    _otpTEController.dispose();
    super.dispose();
  }
}
