import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          // MAIN
          Container(
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
