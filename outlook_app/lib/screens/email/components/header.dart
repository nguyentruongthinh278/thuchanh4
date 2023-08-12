// ignore_for_file: depend_on_referenced_packages, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:outlook_app/responsive.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../../constants.dart';

class Header extends StatelessWidget {
  const Header({
    required Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          // We need this back button on mobile only
          if (Responsive.isMobile(context)) BackButton(),
          IconButton(
            icon: WebsafeSvg.asset(
              "assets/Icons/Trash.svg",
              width: 24,
            ),
            onPressed: () {},
            padding: EdgeInsets.only(right: 35), // Thay đổi giá trị của 'left' để điều chỉnh canh lề trái
          ),
          IconButton(
            icon: WebsafeSvg.asset(
              "assets/Icons/Reply.svg",
              width: 24,
            ),
            onPressed: () {},
            padding: EdgeInsets.only(right: 35),
          ),
          IconButton(
            icon: WebsafeSvg.asset(
              "assets/Icons/Transfer.svg",
              width: 24,
            ),
            onPressed: () {},
            padding: EdgeInsets.only(right: 35),
          ),
          IconButton(
            icon: WebsafeSvg.asset(
              "assets/Icons/Markup.svg",
              width: 24,
            ),
            onPressed: () {},
            padding: EdgeInsets.only(right: 30),
          ),
        ],
      ),
    );
  }
}
