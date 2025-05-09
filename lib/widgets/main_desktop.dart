import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: screenHeight / 1.2,
      constraints: BoxConstraints(minHeight: 350),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hi,\nI'm Sebastian Lech\nA Flutter Developer",
                style: TextStyle(
                    height: 1.5,
                    color: CustomColor.whitePrimary,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: CustomColor.yellowPrimary,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    'Get in touch',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: CustomColor.whitePrimary),
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
          Image.asset(
            'assets/avatar.png',
            width: screenWidth / 2,
          ),
        ],
      ),
    );
  }
}
