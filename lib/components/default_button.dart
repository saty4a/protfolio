import 'package:flutter/material.dart';
import 'package:protfolio/constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton(
      {Key? key,
      required this.imageSrc,
      required this.text,
      required this.press})
      : super(key: key);

  final String imageSrc, text;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(
          vertical: KDefaultPadding,
          horizontal: KDefaultPadding * 2.5,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
      onPressed: () => press,
      child: Row(
        children: [
          Image.asset(imageSrc, height: 40),
          SizedBox(width: KDefaultPadding),
          Text(text),
        ],
      ),
    );
  }
}
