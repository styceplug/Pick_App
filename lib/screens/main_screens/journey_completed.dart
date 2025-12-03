import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pick_app/routes/routes.dart';
import 'package:pick_app/utils/app_constants.dart';
import 'package:pick_app/utils/colors.dart';
import 'package:pick_app/utils/dimensions.dart';
import 'package:pick_app/widgets/custom_appbar.dart';
import 'package:pick_app/widgets/custom_button.dart';

class JourneyCompletedScreen extends StatefulWidget {
  const JourneyCompletedScreen({super.key});

  @override
  State<JourneyCompletedScreen> createState() => _JourneyCompletedScreenState();
}

class _JourneyCompletedScreenState extends State<JourneyCompletedScreen> {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(
              chatTextColor: Colors.transparent,
              chatContainerColor: Colors.transparent,
            ),
            SizedBox(height: Dimensions.height20),
            Text(
              'Trip Ended',
              style: TextStyle(
                fontSize: Dimensions.font20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: Dimensions.height20),
            Image.asset(
              AppConstants.getPngAsset('car'),
              height: Dimensions.height100 * 1.6,
            ),
            SizedBox(height: Dimensions.height20),
            Text(
              'Thank you for sparking the change and driving electric. A rental fee of 14,000F has been charged to your saved payment method. ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: Dimensions.font16,
                fontWeight: FontWeight.w300,
                color: AppColors.grey1,
              ),
            ),
            SizedBox(height: Dimensions.height20),
            Text(
              'Rental Summary',
              style: TextStyle(
                fontSize: Dimensions.font18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: Dimensions.height20),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.width20,
                vertical: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                color: AppColors.cardColor,
                borderRadius: BorderRadius.circular(Dimensions.radius15),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Elapsed Time',
                        style: TextStyle(
                          fontSize: Dimensions.font15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '59:00',
                        style: TextStyle(
                          fontSize: Dimensions.font15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Dimensions.height10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Kilometers',
                        style: TextStyle(
                          fontSize: Dimensions.font15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '30km',
                        style: TextStyle(
                          fontSize: Dimensions.font15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Dimensions.height10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Extra time',
                        style: TextStyle(
                          fontSize: Dimensions.font15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '05:00',
                        style: TextStyle(
                          fontSize: Dimensions.font15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Dimensions.height10),
                  Container(
                    height: 1,
                    width: Dimensions.screenWidth,
                    color: AppColors.grey4,
                  ),
                  SizedBox(height: Dimensions.height10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Charged',
                        style: TextStyle(
                          fontSize: Dimensions.font17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '14,000F',
                        style: TextStyle(
                          fontSize: Dimensions.font15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimensions.height20),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.width20,
                vertical: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                color: AppColors.cardColor,
                borderRadius: BorderRadius.circular(Dimensions.radius15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Payment Method',
                    style: TextStyle(
                      fontSize: Dimensions.font15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Wallet Balance',
                    style: TextStyle(
                      fontSize: Dimensions.font15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimensions.height20),
            Align(
              alignment: AlignmentGeometry.center,
              child: Text(
                'A receipt for the above has been sent to your email.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: Dimensions.font14,
                  fontWeight: FontWeight.w300,
                  color: AppColors.grey3,
                ),
              ),
            ),
            SizedBox(height: Dimensions.height20),
            CustomButton(text: 'Finish Trip', onPressed: (){
              Get.offAllNamed(AppRoutes.homeScreen);
            },borderRadius: BorderRadius.circular(Dimensions.radius30),)
          ],
        ),
      ),
    );
  }
}
