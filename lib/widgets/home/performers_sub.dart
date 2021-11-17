import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:oblio/theme/oblio_theme.dart';
import 'package:oblio/widget-models/text_model.dart';

class PerformersSub extends StatelessWidget {
  const PerformersSub({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 15, left: 15, right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextModel(
              data: 'TOP PERSONAL',
              style: oblioTheme.textTheme.overline!,
              textAlign: TextAlign.left,
              textDirection: TextDirection.ltr,
            ),
            TextModel(
              data: 'THIS MONTH',
              style: TextStyle(
                color: HexColor('#435BD9'),
                fontSize: 11,
                letterSpacing: 0.2,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
              ),
              textAlign: TextAlign.left,
              textDirection: TextDirection.ltr,
            ),
          ],
        ));
  }
}