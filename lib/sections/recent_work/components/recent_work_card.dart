import 'package:flutter/material.dart';
import 'package:protfolio/constants.dart';
import 'package:protfolio/models/Recentwork.dart';

class RecentWorkCard extends StatefulWidget {
  const RecentWorkCard({Key? key, required this.index, required this.press})
      : super(key: key);

  final int index;
  final Function press;

  @override
  _RecentWorkCardState createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.press,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          height: 320,
          width: 540,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) KDefaultShadow],
          ),
          child: Row(
            children: [
              Image.asset(recentworks[widget.index].image),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: KDefaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(recentworks[widget.index].category.toUpperCase()),
                      SizedBox(height: KDefaultPadding / 2),
                      Text(
                        recentworks[widget.index].title,
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(height: 1.5),
                      ),
                      SizedBox(height: KDefaultPadding),
                      Text(
                        "View Details",
                        style: TextStyle(decoration: TextDecoration.underline),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
