import 'package:flutter/material.dart';
import 'package:pick_app/utils/colors.dart';
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
                  height: Dimensions.height10 * 2.7,
                ),
                SizedBox(width: Dimensions.width10),
                Text(
                  'Drive Responsibly',
                  style: TextStyle(
                    fontSize: Dimensions.font18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: Dimensions.height10),
            Text(
              'Do not exceed 70 km/h. No sharp turns. Obey all traffic rules.',
              style: TextStyle(
                fontSize: Dimensions.font16,
                fontWeight: FontWeight.w300,
                color: AppColors.grey3,
              ),
            ),
            SizedBox(height: Dimensions.height30),
            Row(
              children: [
                Image.asset(
                  AppConstants.getPngAsset('prohibited-icon'),
                  height: Dimensions.height10 * 2.7,
                ),
                SizedBox(width: Dimensions.width10),
                Text(
                  'Prohibited Behavior',
                  style: TextStyle(
                    fontSize: Dimensions.font18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: Dimensions.height10),
            Text(
              'No alcohol or drug use while driving. No food or illicit materials allowed in the vehicle.',
              style: TextStyle(
                fontSize: Dimensions.font16,
                fontWeight: FontWeight.w300,
                color: AppColors.grey3,
              ),
            ),
            SizedBox(height: Dimensions.height30),
            Row(
              children: [
                Image.asset(
                  AppConstants.getPngAsset('emergency-icon'),
                  height: Dimensions.height10 * 2.7,
                ),
                SizedBox(width: Dimensions.width10),
                Text(
                  'In Case of Emergency',
                  style: TextStyle(
                    fontSize: Dimensions.font18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: Dimensions.height10),
            Text(
              'Call PickApp immediately in case of any accident or vehicle malfunction. Tap the support button for a quick call.',
              style: TextStyle(
                fontSize: Dimensions.font16,
                fontWeight: FontWeight.w300,
                color: AppColors.grey3,
              ),
            ),
            SizedBox(height: Dimensions.height30),
            Align(
              alignment: AlignmentGeometry.center,
              child: Container(
                height: Dimensions.height100*1.5,
                width: Dimensions.width100*1.5,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primaryColor
                ),
                alignment: Alignment.center,
                child: Text('GO',style: TextStyle(fontSize: Dimensions.font23,fontWeight: FontWeight.w600),),
              ),
            ),
            SizedBox(height: Dimensions.height30),
            Text('By continuing, you agree to our Terms and have read our Policies'),
          ],
        ),
      ),
    );
  }
}
