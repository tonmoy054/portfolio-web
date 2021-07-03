import 'package:flutter/material.dart';
import 'package:folio/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class ToolTechWidget extends StatelessWidget {
  final String techName;
  final double fontSize;

  const ToolTechWidget({Key key, this.techName, this.fontSize}) : super(key: key);

  TextStyle _textStyle(double fSize, bool bold) {
    return GoogleFonts.poppins(
      fontSize: fSize ?? 14,
      fontWeight: !bold ? FontWeight.w100 : FontWeight.w400,
      letterSpacing: 1.0,
      height: 2.0,
      color: Colors.white,
    );
  }



  @override
  Widget build(BuildContext context) {

    final double fontSize = MediaQuery.of(context).size.height * 0.015;

    TextStyle responsiveText (double fontSize, bool bold){
      if(MediaQuery.of(context).size.width < 600)
        return _textStyle(fontSize, bold,);
      else if(MediaQuery.of(context).size.width >= 600 && MediaQuery.of(context).size.width < 1080)
        return _textStyle(fontSize , bold);
      else if(MediaQuery.of(context).size.width >= 1080 && MediaQuery.of(context).size.width < 1980)
       return _textStyle(fontSize  , bold);
      else {return _textStyle(fontSize + 12, bold);}
    }
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Icon(
            Icons.album_outlined,
            color: kPrimaryColor,
            size: MediaQuery.of(context).size.height * 0.02,
          ),
          Text(" $techName", style:responsiveText(fontSize, false) )
        ],
      ),
    );
  }
}

