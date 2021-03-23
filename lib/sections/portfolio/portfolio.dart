import 'package:flutter/material.dart';
import 'package:folio/sections/portfolio/portfolioDesktop.dart';
import 'package:folio/sections/portfolio/portfolioMobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class OpenSource extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OpenSourceMobile(),
      tablet: OpenSourceMobile(),
      desktop: OpenSourceDesktop(),
    );
  }
}
