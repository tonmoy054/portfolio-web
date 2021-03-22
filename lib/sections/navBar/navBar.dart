import 'package:flutter/material.dart';
import 'package:folio/sections/navBar/navBarMobile.dart';
import 'package:folio/sections/navBar/navBarTabDesktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MyNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavBarMobile(),
      desktop: NavBarTabDesktop(),
      tablet: NavBarTabDesktop(),
    );
  }
}
