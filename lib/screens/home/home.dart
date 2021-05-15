import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app_pre/constants.dart';
import 'package:furniture_app_pre/models/ProductModel.dart';
import 'package:furniture_app_pre/proportion.dart';
import 'package:furniture_app_pre/screens/home/components/categories.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: Container(
        height: 70.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(width: 1.0, color: kPrimaryColor.withOpacity(0.1)))
        ),
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavItem(
              tap: () {},
              icon: 'assets/icons/home.svg',
            ),

            NavItem(
              tap: () {},
              icon: 'assets/icons/buy.svg',
            ),

            NavItem(
              tap: () {},
              icon: 'assets/icons/heart_alt.svg',
            ),

            NavItem(
              tap: () {},
              icon: 'assets/icons/profile.svg',
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            // width: double.infinity,
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

                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search you want...',
                          hintStyle: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5)
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 10),
                          prefixIcon: SvgPicture.asset('assets/icons/search.svg', fit: BoxFit.scaleDown),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: kSecondaryColor.withOpacity(0.1)),
                            borderRadius: BorderRadius.circular(0)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: kSecondaryColor.withOpacity(0.1)),
                            borderRadius: BorderRadius.circular(0)
                          ),
                        ),
                      ),
                    ),

                    Spacer(),

                    Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 50.0,
                          height: 50.0,
                          color: kPrimaryColor,
                          padding: EdgeInsets.all(kDefaultPadding * 0.3),
                          child: SvgPicture.asset('assets/icons/filter.svg'),
                        ),
                      ),
                    )
                  ],
                ),

                Categories(),

                Padding(
                  padding: EdgeInsets.only(top: kDefaultPadding * 0.8),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...List.generate(
                          demoProducts.length,
                          (index) {
                            return Padding(
                              padding: EdgeInsets.only(right: kDefaultPadding * 0.8),
                              child: SizedBox(
                                width: 198,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Hero(
                                        tag: demoProducts[index].id,
                                        child: Image.asset(
                                          demoProducts[index].image,
                                          width: 198,
                                        ),
                                      ),

                                      SizedBox(height: 20),

                                      Text(
                                        demoProducts[index].name,
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w900
                                        ),
                                      ),

                                      SizedBox(height: 10),

                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              children: [
                                                buildWidgetSpan("\$ "),

                                                TextSpan(
                                                  text: demoProducts[index].price.toString().split('.')[0],
                                                  style: TextStyle(
                                                    color: kPrimaryColor,
                                                    fontSize: 22,
                                                    fontWeight: FontWeight.bold
                                                  ),
                                                ),

                                                buildWidgetSpan(" .${demoProducts[index].price.toString().split('.')[1]}"),

                                              ]
                                            ),
                                          ),

                                          GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              width: 40.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                border: Border.all(color: kPrimaryColor.withOpacity(0.1))
                                              ),
                                              padding: EdgeInsets.all(kDefaultPadding * 0.1),
                                              child: SvgPicture.asset('assets/icons/heart.svg'),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  WidgetSpan buildWidgetSpan(text) {
    return WidgetSpan(
      child: Transform.translate(
        offset: const Offset(0.0, -7.0),
        child: Text(
          text,
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 12,
            fontFamily: 'Circular Std',
          )
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    Key key,
    @required this.tap,
    @required this.icon
  }) : super(key: key);

  final GestureTapCallback tap;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: SvgPicture.asset(icon),
    );
  }
}