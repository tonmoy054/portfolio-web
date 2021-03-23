import 'package:flutter/material.dart';
import 'package:folio/constants.dart';
import 'package:folio/sections/about/about.dart';
import 'package:folio/sections/contact/contact.dart';
import 'package:folio/sections/home/home.dart';
import 'package:folio/sections/navBar/navBarLogo.dart';
import 'package:folio/sections/portfolio/portfolio.dart';
import 'package:folio/sections/services/services.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBarTabDesktop extends StatelessWidget {
  final List<Widget> _sections = [
    HomePage(),
    About(),
    Services(),
    OpenSource(),
    Contact()
  ];

  final List<String> _sectionsName = [
    "Home",
    "About",
    "Services",
    "Projects",
    "Contact"
  ];

  Widget _appBarActions(String childText, int index) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: MaterialButton(
        hoverColor: kPrimaryColor,
        onPressed: () => {},
        child: Text(
          childText,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.transparent,
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        children: [
          NavBarLogo(),
          Expanded(
            child: Container(),
          ),
          for (int i = 0; i < _sections.length; i++)
            _appBarActions(_sectionsName[i], i),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              hoverColor: kPrimaryColor.withAlpha(150),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide(color: kPrimaryColor)),
              onPressed: () {},
              child: Text(
                "Resume",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
