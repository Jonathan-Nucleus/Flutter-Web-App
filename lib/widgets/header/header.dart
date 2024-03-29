import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:oblio/widgets/header/create.dart';
import 'package:oblio/widgets/header/header_avatar.dart';
import 'package:oblio/widgets/header/header_logo.dart';
import 'package:oblio/widgets/header/menu.dart';
import 'package:oblio/widgets/header/notification.dart';
import 'package:oblio/widgets/header/portal_card.dart';
import 'package:oblio/widgets/header/search.dart';
import 'package:oblio/widgets/header/settings.dart';
import 'package:oblio/widgets/header/upload.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context).size;
    var height = device.height;
    var width = device.width;

    logoVisibility() => width > 900 ? true : false;
    buttonVisibility() => width > 950 ? true : false;
    leading() => width < 900 ? 70.0 : 250.0;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(0.8, 0.0),
              stops: [0.0, 1.0],
              colors: [HexColor('#3f5efb'), HexColor('#fc4646')])),
      child: AppBar(
        backgroundColor: Colors.amber.withOpacity(0.0),
        toolbarHeight: 80,
        leadingWidth: leading(),
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
                padding: EdgeInsets.only(left: 25),
                child: MenuButton(onPressed: () {
                  Scaffold.of(context).openDrawer();
                })),
            Visibility(
              visible: logoVisibility(),
              child: HomeLogo(),
            ),
          ],
        ),
        centerTitle: true,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SearchInput(
              obscure: false,
              label: 'search',
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Icon(
                  Icons.search,
                  color: Colors.grey[800],
                ),
              ),
            ),
          ],
        ),
        actions: [
          Visibility(
              visible: buttonVisibility(),
              child: CreateButton(onPressed: () {
                showDialog(
                    barrierColor: Colors.transparent,
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                          padding: EdgeInsets.only(top: 100, right: 10),
                          alignment: Alignment.topCenter,
                          child: PortalCard(
                            height: height * 0.70,
                            width: width * 0.5,
                          ));
                    });
              })),
          Visibility(
            visible: buttonVisibility(),
            child: SizedBox(width: 20),
          ),
          Visibility(
              visible: buttonVisibility(),
              child: UploadButton(onPressed: () {
                showDialog(
                    barrierColor: Colors.transparent,
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                          padding: EdgeInsets.only(top: 100, right: 10),
                          alignment: Alignment.topCenter,
                          child: PortalCard(
                            height: height * 0.70,
                            width: width * 0.5,
                          ));
                    });
              })),
          Visibility(
            visible: buttonVisibility(),
            child: SizedBox(width: 20),
          ),
          Visibility(
              visible: buttonVisibility(),
              child: NotificationButton(onPressed: () {
                showDialog(
                    barrierColor: Colors.transparent,
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                          padding: EdgeInsets.only(top: 100, right: 10),
                          alignment: Alignment.topCenter,
                          child: PortalCard(
                            height: height * 0.70,
                            width: width * 0.5,
                          ));
                    });
              })),
          Visibility(
            visible: buttonVisibility(),
            child: SizedBox(width: 20),
          ),
          Visibility(
              visible: buttonVisibility(),
              child: SettingsButton(onPressed: () {
                showDialog(
                    barrierColor: Colors.transparent,
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                          padding: EdgeInsets.only(top: 100, right: 10),
                          alignment: Alignment.topCenter,
                          child: PortalCard(
                            height: height * 0.70,
                            width: width * 0.5,
                          ));
                    });
              })),
          Visibility(
            visible: buttonVisibility(),
            child: SizedBox(width: 20),
          ),
          HeaderAvatar(),
        ],
      ),
    );
  }
}
