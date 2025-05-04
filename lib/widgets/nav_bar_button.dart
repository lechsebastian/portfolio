import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/nav_items.dart';

class NavBarButton extends StatelessWidget {
  const NavBarButton({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          navTitles[index],
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: CustomColor.whitePrimary),
        ),
      ),
    );
  }
}
