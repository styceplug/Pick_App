import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pick_app/utils/app_constants.dart';
import 'package:pick_app/utils/colors.dart';
import 'package:pick_app/utils/dimensions.dart';
import 'package:pick_app/widgets/custom_button.dart';

import '../../routes/routes.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
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
              'Welcome to PickApp GO',
              style: TextStyle(
                fontSize: Dimensions.font30,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Onboarding',
              style: TextStyle(
                fontSize: Dimensions.font20,
                fontWeight: FontWeight.w400,
                color: AppColors.grey3,
              ),
            ),
            SizedBox(height: Dimensions.height70),
            Row(
              children: [
                Image.asset(
                  AppConstants.getPngAsset('intro1'),
                  height: Dimensions.height30,
                  width: Dimensions.width30,
                ),
                SizedBox(width: Dimensions.width5),
                Text(
                  'How do I book a car?',
                  style: TextStyle(
                    fontSize: Dimensions.font20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: Dimensions.height10),
            Text(
              'To book a car, find a car, select your preferred vehicle, choose your time slot, and confirm your reservation. Make sure your balance is sufficient.',
              style: TextStyle(
                fontSize: Dimensions.font15,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: Dimensions.height20),
            Row(
              children: [
                Image.asset(
                  AppConstants.getPngAsset('intro2'),
                  height: Dimensions.height30,
                  width: Dimensions.width30,
                ),
                SizedBox(width: Dimensions.width5),
                Text(
                  'How do I unlock the car?',
                  style: TextStyle(
                    fontSize: Dimensions.font20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: Dimensions.height10),
            Text(
              'Once at the vehicle, scan the QR code on the windshield or window using the app. The car will unlock automatically if your booking is active. Learn more',
              style: TextStyle(
                fontSize: Dimensions.font15,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: Dimensions.height20),
            Row(
              children: [
                Image.asset(
                  AppConstants.getPngAsset('intro3'),
                  height: Dimensions.height30,
                  width: Dimensions.width30,
                ),
                SizedBox(width: Dimensions.width5),
                Text(
                  'How do I top up my balance?',
                  style: TextStyle(
                    fontSize: Dimensions.font20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: Dimensions.height10),
            Text(
              'Go to the Wallet section in the app and choose your preferred top-up method (Mobile Money, card, etc.). You must have enough balance to complete a reservation.',
              style: TextStyle(
                fontSize: Dimensions.font15,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: Dimensions.height40),
            CustomButton(
              text: 'Continue',
              onPressed: () {
                Get.toNamed(AppRoutes.homeScreen);
              },
              backgroundColor: AppColors.white,
              borderRadius: BorderRadius.circular(Dimensions.radius30),
            ),
            SizedBox(height: Dimensions.height20),
            Text(
              'By continuing, you agree to our Terms and have read our Policies.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: Dimensions.font15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
