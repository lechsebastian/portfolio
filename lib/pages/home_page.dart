import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/widgets/drawer_mobile.dart';
import 'package:portfolio/widgets/nav_bar_desktop.dart';
import 'package:portfolio/widgets/nav_bar_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: CustomColor.scaffoldBg,
      endDrawer: DrawerMobile(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          // NAVBAR
          // NavBarDesktop(),
          NavBarMobile(
            onMenuTap: () {
              scaffoldKey.currentState?.openEndDrawer();
            },
          ),
          // SKILLS
          Container(
            color: Colors.blueGrey,
            height: 500,
            width: double.infinity,
          ),
          // SKILLS
          Container(
            color: Colors.blueGrey,
            height: 500,
            width: double.infinity,
          ),
          // PROJECTS
          Container(
            height: 500,
            width: double.infinity,
          ),
          // CONTACT
          Container(
            color: Colors.blueGrey,
            height: 500,
            width: double.infinity,
          ),
          // FOOTER
          Container(
            height: 500,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
