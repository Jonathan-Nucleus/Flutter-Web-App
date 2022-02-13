import 'package:flutter/material.dart';

class HomeLogo extends StatelessWidget {
  const HomeLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context).size;
    var width = device.width;
    return Container(
      alignment: Alignment.centerLeft,
      width: 150,
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        'Caves',
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Colors.white
        ),
      )
    );
  }
}
