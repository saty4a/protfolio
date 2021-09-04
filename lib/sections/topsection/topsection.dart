import 'package:flutter/material.dart';
import 'package:protfolio/constants.dart';
import 'package:protfolio/sections/topsection/components/logo_blur_box.dart';
import 'package:protfolio/sections/topsection/components/menu.dart';
import 'package:protfolio/sections/topsection/components/personpic.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 900, minHeight: 700),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/background.png"),
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(top: KDefaultPadding),
        width: 1200,
        child: Stack(
          children: [
            LogoAndBlurBox(size: size),
            Positioned(
              bottom: 0,
              right: 0,
              child: PersonPic(),
            ),
            Positioned(
              bottom: 0,
              child: Menu(),
            )
          ],
        ),
      ),
    );
  }
}
