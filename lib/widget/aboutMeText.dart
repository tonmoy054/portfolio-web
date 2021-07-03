import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMeText extends StatelessWidget {
  final TextAlign textAlign;
  final double fontSize;

  const AboutMeText({Key key, this.textAlign, this.fontSize}) : super(key: key);

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
    return RichText(
      textAlign: textAlign ?? TextAlign.left,
      text: TextSpan(children: [
        TextSpan(
          text:
              "Tonmoy is a tech enthusiast and emerging entrepreneur who believes technology can make the biggest social impact for betterment. In addition to Kloudoop, he is also the co-founder of a healthcare start-up project called ‘Cure’. Tonmoy believes, through ‘Cure’, they can make a radical change in the healthcare industry of Bangladesh. Tonmoy has been awarded and recognized in the USA, JAPAN, MALAYSIA & DENMARK as an entrepreneur. Also, he has been honored as a Fellow of The Resolution Project, USA. He is also serving as an innovation Director at YSI Bangladesh (Young Sustainable Impact), a Norwegian-based organization for young entrepreneurs. Building a sustainable world and a better future is his motto. ",
          style: MediaQuery.of(context).size.width < 600
              ? _textStyle(fontSize, false,)
              : _textStyle(fontSize + 2, false),

        ),

      ]),
    );
  }
}
