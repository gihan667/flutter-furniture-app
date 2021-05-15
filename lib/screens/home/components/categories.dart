import 'package:flutter/material.dart';

import '../../../constants.dart';

class Categories extends StatefulWidget {
  const Categories({
    Key key,
  }) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<String> placesCategoris = ["Chairs", "Sofas", "Cupboards", "Tables", "Beds"];

    return Padding(
      padding: EdgeInsets.only(top: kDefaultPadding),
      child: SizedBox(
        height: 35,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: placesCategoris.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  this.selectedIndex = index;
                });
              },
              child: Padding(
                padding: EdgeInsets.only(right: kDefaultPadding * 0.8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      placesCategoris[index],
                      style: TextStyle(
                        fontSize: 16,
                        color: selectedIndex == index ? kPrimaryColor : kPrimaryColor.withOpacity(0.5),
                        fontWeight: selectedIndex == index ? FontWeight.bold : FontWeight.normal
                      ),
                    ),

                    Spacer(),

                    Container(
                      width: 30.0,
                      height: selectedIndex == index ? 3.0 : 0.0,
                      color: kPrimaryColor,
                    )
                  ],
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}