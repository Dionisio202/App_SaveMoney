import 'package:app/CustomImage.dart';
import 'package:app/LineAnimation.dart';
import 'package:flutter/material.dart';
import 'package:app/CustomText.dart';

class PreSplash extends StatefulWidget {
  @override
  _PreSplashScreenState createState() => _PreSplashScreenState();
}

class _PreSplashScreenState extends State<PreSplash>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE7E7D9),
      body: Center(
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: 'Save Money',
                  color: Colors.black,
                  fontSize: 30.0,
                  fontFamily: 'Arial',
                ),
                SizedBox(height: 120.0),
                CustomImage(
                  imagePath: 'pictures/wallet.png',
                  width: 250.0,
                  height: 200.0,
                ),
                LineAnimation(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomText(
                text: 'DionisioDev',
                color: Colors.black,
                fontSize: 14.0,
                fontFamily: 'Arial',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
