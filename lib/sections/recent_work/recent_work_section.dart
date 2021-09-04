import 'package:flutter/material.dart';
import 'package:protfolio/components/hire_me_card.dart';
import 'package:protfolio/components/section_title.dart';
import 'package:protfolio/constants.dart';
import 'package:protfolio/models/Recentwork.dart';
import 'package:protfolio/sections/recent_work/components/recent_work_card.dart';

class RecentWorkSection extends StatelessWidget {
  const RecentWorkSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: KDefaultPadding * 6),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFF7E8FF).withOpacity(0.3),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/recent_work_bg.png"),
        ),
      ),
      child: Column(
        children: [
          Transform.translate(
            offset: Offset(0, -80),
            child: HireMeCard(),
          ),
          SectionTitle(
            title: "RecentWorks",
            subTitle: "My Strong Arenas",
            color: Color(0xFFFFB100),
          ),
          SizedBox(height: KDefaultPadding * 1.5),
          SizedBox(
            width: 1110,
            child: Wrap(
              spacing: KDefaultPadding,
              runSpacing: KDefaultPadding * 2,
              children: List.generate(
                recentworks.length,
                (index) => RecentWorkCard(index: index, press: () {}),
              ),
            ),
          ),
          SizedBox(height: KDefaultPadding * 5),
        ],
      ),
    );
  }
}
