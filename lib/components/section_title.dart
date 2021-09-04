import 'package:flutter/material.dart';
import 'package:protfolio/constants.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.color})
      : super(key: key);

  final String title, subTitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: KDefaultPadding),
      constraints: BoxConstraints(maxWidth: 1110),
      height: 100,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: KDefaultPadding),
            padding: EdgeInsets.only(bottom: 72),
            width: 8,
            height: 100,
            color: Colors.black,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: color,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                subTitle,
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  color: kTextColor,
                ),
              ),
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
              )
            ],
          )
        ],
      ),
    );
  }
}
