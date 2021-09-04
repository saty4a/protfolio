import 'package:flutter/material.dart';
import 'package:protfolio/constants.dart';
import 'package:protfolio/sections/about/about_section.dart';
import 'package:protfolio/sections/contact/contact_section.dart';
import 'package:protfolio/sections/recent_work/recent_work_section.dart';
import 'package:protfolio/sections/service/service_section.dart';
import 'package:protfolio/sections/topsection/topsection.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            SizedBox(height: KDefaultPadding * 2),
            AboutSection(),
            ServiceSection(),
            RecentWorkSection(),
            SizedBox(height: KDefaultPadding),
            ContactSection(),
          ],
        ),
      ),
    );
  }
}
