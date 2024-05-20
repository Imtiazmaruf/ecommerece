import 'package:ecommerece/presentation/screens/splash_screen.dart';
import 'package:ecommerece/presentation/utility/app_colours.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CraftyBay extends StatefulWidget {
  const CraftyBay({super.key});

  @override
  State<CraftyBay> createState() => _CraftyBayState();
}

class _CraftyBayState extends State<CraftyBay> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: ThemeData(
        useMaterial3: false,
        colorSchemeSeed: AppColors.primaryColor,
        progressIndicatorTheme:
            const ProgressIndicatorThemeData(color: AppColors.primaryColor),

        textTheme: _textTheme(),

        inputDecorationTheme: _inputDecorationTheme(),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(

            padding: EdgeInsets.symmetric(vertical: 10,),
            fixedSize: const Size.fromWidth(double.maxFinite),
            backgroundColor: AppColors.primaryColor,
            foregroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }

  TextTheme _textTheme() {
    return const TextTheme(
        headlineLarge: TextStyle(
            fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),
        headlineSmall: TextStyle(fontSize: 14, color: Colors.blue));
  }

  InputDecorationTheme _inputDecorationTheme() => InputDecorationTheme(
     hintStyle: TextStyle(
       color: Colors.grey,
       fontWeight: FontWeight.w400
     ),
      border: _outlineInputBorder,
      enabledBorder: _outlineInputBorder,
      focusedBorder: _outlineInputBorder,
      errorBorder: _outlineInputBorder.copyWith(
          borderSide: const BorderSide(color: Colors.red)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8));

  final OutlineInputBorder _outlineInputBorder = const OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.primaryColor),
  );
}
