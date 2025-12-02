import 'package:flutter/material.dart';
import 'package:pick_app/utils/dimensions.dart';

import '../../utils/app_constants.dart';

class CarUnlockedScreen extends StatefulWidget {
  const CarUnlockedScreen({super.key});

  @override
  State<CarUnlockedScreen> createState() => _CarUnlockedScreenState();
}

class _CarUnlockedScreenState extends State<CarUnlockedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Dimensions.width20,
          vertical: Dimensions.height20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Car unlocked',
              style: TextStyle(
                fontSize: Dimensions.font23,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Safety Guidelines',
              style: TextStyle(
                fontSize: Dimensions.font17,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: Dimensions.height50),
            Row(
              children: [
                Image.asset(
                  AppConstants.getPngAsset('drive-icon'),
                  height: Dimensions.height10 * 2.9,
                ),
                SizedBox(width: Dimensions.width10),
                Text(
                  'Drive Responsibly',
                  style: TextStyle(fontSize: Dimensions.font20,fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
