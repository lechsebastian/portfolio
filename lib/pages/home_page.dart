import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/nav_items.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.scaffoldBg,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          // NAVBAR
          Container(
            height: 60,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  CustomColor.bgLight1,
                ],
              ),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Row(
              children: [
                Text(
                  'SL',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.yellowSecondary),
                ),
                Spacer(),
                for (int i = 0; i < navTitles.length; i++)
                  TextButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        navTitles[i],
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: CustomColor.whitePrimary),
                      ),
                    ),
                  ),
              ],
            ),
          ), // SKILLS
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
