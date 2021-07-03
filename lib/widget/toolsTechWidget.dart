import 'package:flutter/material.dart';
import 'package:folio/constants.dart';

class ToolTechWidget extends StatelessWidget {
  final String techName;

  const ToolTechWidget({Key key, this.techName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Icon(
            Icons.album_outlined,
            color: kPrimaryColor,
            size: MediaQuery.of(context).size.height * 0.02,
          ),
          Text(" $techName", style: TextStyle(fontWeight: FontWeight.bold, fontSize: MediaQuery.of(context).size.height * 0.025),)
        ],
      ),
    );
  }
}
