import 'package:flutter/material.dart';
import 'package:furniture_app_pre/components/bottom_nav.dart';
import 'package:furniture_app_pre/constants.dart';
import 'package:furniture_app_pre/screens/home/components/categories.dart';
import 'components/products.dart';
import 'components/search_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Perfect Furniture\nFor Your House',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w900
                  ),
                ),

                SizedBox(height: kDefaultPadding * 0.8),

                SearchBar(),

                Categories(),

                Products()
              ],
            ),
          ),
        ),
      ),
    );
  }
}