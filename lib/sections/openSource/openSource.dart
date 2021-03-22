import 'package:flutter/material.dart';
import 'package:folio/sections/openSource/openSourceDesktop.dart';
import 'package:folio/sections/openSource/openSourceMobile.dart';
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
