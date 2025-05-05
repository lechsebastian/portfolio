import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/widgets/logo.dart';

class NavBarMobile extends StatelessWidget {
  final VoidCallback? onMenuTap;
  const NavBarMobile({super.key, required this.onMenuTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      child: Row(
        children: [
          Logo(),
          Spacer(),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: CustomColor.bgLight1,
            ),
            child: IconButton(
              onPressed: onMenuTap,
              icon: Icon(Icons.menu),
            ),
          ),
        ],
      ),
    );
  }
}
