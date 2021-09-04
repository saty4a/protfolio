import 'package:flutter/material.dart';
import 'package:protfolio/constants.dart';

class MyOutlineButton extends StatelessWidget {
  const MyOutlineButton({
    Key? key,
    required this.imageSrc,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String imageSrc, text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.symmetric(
                vertical: KDefaultPadding, horizontal: KDefaultPadding * 2.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          onPressed: () => press,
          child: Row(
            children: [
              Image.asset(
                imageSrc,
                height: 40,
              ),
              SizedBox(width: KDefaultPadding),
              Text(text)
            ],
          )),
    );
  }
}
