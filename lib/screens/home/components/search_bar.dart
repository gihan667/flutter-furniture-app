import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}