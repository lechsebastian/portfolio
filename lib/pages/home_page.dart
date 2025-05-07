import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/size.dart';
import 'package:portfolio/widgets/drawer_mobile.dart';
import 'package:portfolio/widgets/main_desktop.dart';
import 'package:portfolio/widgets/main_mobile.dart';
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
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer:
            constraints.maxWidth >= kMinDesktopWidth ? null : DrawerMobile(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // NAVBAR
            if (constraints.maxWidth >= kMinDesktopWidth)
              NavBarDesktop()
            else
              NavBarMobile(
                onMenuTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),
            // MAIN
            if (constraints.maxWidth >= kMinDesktopWidth)
              MainDesktop()
            else
              MainMobile(),

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
    });
  }
}
