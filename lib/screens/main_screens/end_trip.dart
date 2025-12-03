import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pick_app/routes/routes.dart';
import 'package:pick_app/utils/app_constants.dart';
import 'package:pick_app/utils/colors.dart';
import 'package:pick_app/utils/dimensions.dart';

class EndTripScreen extends StatefulWidget {
  const EndTripScreen({super.key});

  @override
  State<EndTripScreen> createState() => _EndTripScreenState();
}

class _EndTripScreenState extends State<EndTripScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Dimensions.screenHeight,
        width: Dimensions.screenWidth,
        padding: EdgeInsets.symmetric(
          horizontal: Dimensions.width20,
          vertical: Dimensions.height20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Finish Trip',
              style: TextStyle(
                fontSize: Dimensions.font22,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: Dimensions.height70 * 1.5),
            Image.asset(
              AppConstants.getPngAsset('finish-icon'),
              width: Dimensions.screenWidth - Dimensions.width50 * 4,
            ),
            SizedBox(height: Dimensions.height70 * 1.5),
            Text(
              'Check Your Belongings',
              style: TextStyle(
                fontSize: Dimensions.font22,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: Dimensions.height10),
            Text(
              'Did you forget anything? Look around the car for phones, wallets, keys, or personal items before ending your ride.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: Dimensions.font16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: Dimensions.height50),
            InkWell(
              onTap: (){
                Get.toNamed(AppRoutes.journeyCompletedScreen);
              },
              child: Text(
                'Next',
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: Dimensions.font18,
                  decorationStyle: TextDecorationStyle.solid,
                  decorationColor: AppColors.primaryColor,
                  decoration: TextDecoration.underline
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
