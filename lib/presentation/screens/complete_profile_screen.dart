import 'package:ecommerece/presentation/widget/app_logo.dart';
import 'package:flutter/material.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key, });

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {

  final TextEditingController _firstNameTEController = TextEditingController();
  final TextEditingController _lastNameTEController = TextEditingController();
  final TextEditingController _mobileTEController = TextEditingController();
  final TextEditingController _cityTEController = TextEditingController();
  final TextEditingController _shopaddTEController = TextEditingController();
  
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();




  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child:  Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50,),
                  const Applogo(),
                  const SizedBox(height: 16,),
                  Text('Complete Profile',
                    style : textTheme.headlineLarge,),
                  const SizedBox(height: 4),
                  Text('Get started with us with your details',
                    style: textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    controller: _firstNameTEController,
                    decoration: InputDecoration(
                        hintText: 'First name'
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _lastNameTEController,
                    decoration: InputDecoration(
                        hintText: 'Last Name'
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _mobileTEController,
                    decoration: InputDecoration(
                        hintText: 'Mobile Number'
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _cityTEController,
                    decoration: InputDecoration(
                        hintText: 'City'
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _shopaddTEController,
                    maxLines: 3,
                    decoration: InputDecoration(
                        hintText: 'Shop Address',
                    ),
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton(onPressed: (){},
                      child: const Text('Complete'),),
              
                        
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


  @override
  void dispose() {
    _firstNameTEController.dispose();
    _lastNameTEController.dispose();
    _mobileTEController.dispose();
    _cityTEController.dispose();
    _shopaddTEController.dispose();
    super.dispose();
  }
}
