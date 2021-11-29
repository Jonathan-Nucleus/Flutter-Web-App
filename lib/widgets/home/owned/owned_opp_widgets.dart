import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:oblio/widget-models/text_model.dart';
import 'package:oblio/widgets/home/common/common_subtitle.dart';
import 'package:oblio/widgets/home/common/common_title.dart';
import 'package:oblio/widgets/home/owned/owned_opp_expansion_list.dart';

class OwnedOppWidets extends StatelessWidget {
  const OwnedOppWidets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommonTitle(title: 'OWNED OPPORTUNITIES'),
          SizedBox(height: 15),
          CommonSubtitle(
            subtitle: 'SALES TEAM',
            filterone: 'THIS MONTH',
            filtertwo: TextModel(
              data: 'ALL TIME',
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
          ),
          SizedBox(height: 5),
          OwnedOppExpansionList()
        ],
      ),
    );
  }
}
