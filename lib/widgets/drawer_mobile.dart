import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/nav_items.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColor.scaffoldBg,
      child: Column(
        children: [
          for (int index = 0; index < navTitles.length; index++)
            ListTile(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              leading: Icon(navIcons[index]),
              title: Text(
                navTitles[index],
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: CustomColor.whitePrimary),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          Spacer(),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            leading: Icon(Icons.close),
            title: Text(
              'Close',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: CustomColor.whitePrimary),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
