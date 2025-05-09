import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      height: screenHeight,
      constraints: BoxConstraints(minHeight: 560),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (rect) {
              return LinearGradient(
                colors: [
                  CustomColor.scaffoldBg.withAlpha((0.6 * 255).toInt()),
                  CustomColor.scaffoldBg.withAlpha((0.6 * 255).toInt()),
                ],
              ).createShader(rect);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              'assets/avatar.png',
              width: screenWidth,
            ),
          ),
          SizedBox(height: 30),
          Text(
            "Hi,\nI'm Sebastian Lech\nA Flutter Developer",
            style: TextStyle(
                height: 1.5,
                color: CustomColor.whitePrimary,
                fontSize: 24,
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
    );
  }
}
