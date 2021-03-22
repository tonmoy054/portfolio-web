// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:folio/animations/entranceFader.dart';
import 'package:folio/constants.dart';
import 'package:folio/sections/about/about.dart';
import 'package:folio/sections/contact/contact.dart';
import 'package:folio/sections/home/home.dart';
import 'package:folio/sections/navBar/navBarLogo.dart';
import 'package:folio/sections/openSource/openSource.dart';
import 'package:folio/sections/services/services.dart';
import 'package:folio/widget/arrowOnTop.dart';
import 'package:folio/widget/footer.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _scrollController = ScrollController();

  _animateToIndex(i) =>
      _scrollController.animateTo(MediaQuery.of(context).size.height * i,
          duration: Duration(seconds: 2), curve: Curves.fastOutSlowIn);

  final List<String> _sectionsName = [
    "Home",
    "About",
    "Services",
    "Projects",
    "Contact"
  ];

  Widget sectionWidget(int i) {
    if (i == 0) {
      return HomePage();
    } else if (i == 1) {
      return About();
    } else if (i == 2) {
      return Services();
    } else if (i == 3) {
      return OpenSource();
    } else if (i == 4) {
      return Contact();
    } else if (i == 5) {
      return SizedBox(
        height: 40.0,
      );
    } else if (i == 6) {
      return ArrowOnTop(
        onPressed: () => _animateToIndex(0),
      );
    } else if (i == 7) {
      return Footer();
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: MediaQuery.of(context).size.width > 760
          ? _appBarTabDesktop()
          : AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
      drawer: MediaQuery.of(context).size.width < 760 ? _appBarMobile() : null,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: RawScrollbar(
          thumbColor: kPrimaryColor,
          thickness: 5.0,
          child: ListView.builder(
            itemCount: 8,
            controller: _scrollController,
            itemBuilder: (context, index) {
              return sectionWidget(index);
            },
          ),
        ),
      ),
    );
  }

  Widget _appBarActions(String childText, int index) {
    return MediaQuery.of(context).size.width > 760
        ? EntranceFader(
            offset: Offset(0, -20),
            delay: Duration(seconds: 3),
            duration: Duration(seconds: 1),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                hoverColor: kPrimaryColor,
                onPressed: () => _animateToIndex(index),
                child: Text(
                  childText,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              hoverColor: kPrimaryColor,
              onPressed: () => _animateToIndex(index),
              child: Text(
                childText,
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
  }

  Widget _appBarTabDesktop() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      title: MediaQuery.of(context).size.width < 740
          ? EntranceFader(
              duration: Duration(seconds: 1),
              offset: Offset(0, -20),
              delay: Duration(seconds: 3),
              child: NavBarLogo())
          : EntranceFader(
              offset: Offset(0, -20),
              duration: Duration(seconds: 1),
              delay: Duration(seconds: 3),
              child: NavBarLogo(
                height: MediaQuery.of(context).size.height * 0.035,
              ),
            ),
      actions: [
        for (int i = 0; i < _sectionsName.length; i++)
          _appBarActions(_sectionsName[i], i),
        EntranceFader(
          offset: Offset(0, -20),
          delay: Duration(seconds: 3),
          duration: Duration(seconds: 1),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              hoverColor: kPrimaryColor.withAlpha(150),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide(color: kPrimaryColor)),
              onPressed: () {
                html.window.open(
                    'https://drive.google.com/uc?export=view&id=1d8rYs5VxcBacsHIZWG6CIU4yD-hZRVcC',
                    "pdf");
              },
              child: Text(
                "Resume",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _appBarMobile() {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
        children: [
          Center(
            child: NavBarLogo(
              height: 28,
            ),
          ),
          for (int i = 0; i < _sectionsName.length; i++)
            _appBarActions(_sectionsName[i], i),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              hoverColor: kPrimaryColor.withAlpha(150),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide(color: kPrimaryColor)),
              onPressed: () {
                html.window.open(
                    'https://drive.google.com/uc?export=view&id=1d8rYs5VxcBacsHIZWG6CIU4yD-hZRVcC',
                    "pdf");
              },
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

  bool isHover = false;
  Widget _arrowOnTop() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: () => _animateToIndex(0),
          onHover: (isHovering) {
            if (isHovering) {
              setState(() {
                isHover = true;
              });
            } else {
              setState(() {
                isHover = false;
              });
            }
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0),
                bottomLeft: Radius.circular(8.0),
              ),
              boxShadow: isHover
                  ? [
                      BoxShadow(
                        color: kPrimaryColor.withAlpha(200),
                        blurRadius: 12.0,
                        offset: Offset(2.0, 3.0),
                      )
                    ]
                  : [],
            ),
            child: Icon(
              Icons.arrow_drop_up_outlined,
              color: kPrimaryColor,
              size: MediaQuery.of(context).size.height * 0.05,
            ),
          ),
        ),
      ],
    );
  }
}
