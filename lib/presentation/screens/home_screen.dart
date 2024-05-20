import 'package:ecommerece/presentation/utility/asset_path.dart';
import 'package:ecommerece/presentation/widget/app_bar_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final TextEditingController _searchTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                controller: _searchTEController,

                decoration: InputDecoration(
                  hintText: 'Search',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: SvgPicture.asset(AssetsPath.appNavlogoSvg),
      actions: [
        AppbarIconButton(
          icon: Icons.person,
          onTap: (){},
        ),
        SizedBox(width: 8,),
        AppbarIconButton(
          icon: Icons.call_outlined,
          onTap: (){},
        ),
        SizedBox(width: 8,),
        AppbarIconButton(
          icon: Icons.notification_add_rounded,
          onTap: (){},
        ),


      ],

    );
  }

  @override
  void dispose() {
    _searchTEController.dispose();
    super.dispose();
  }
}


