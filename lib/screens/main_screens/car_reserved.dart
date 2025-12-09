import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pick_app/utils/app_constants.dart';
import 'package:pick_app/utils/dimensions.dart';
import 'package:pick_app/widgets/custom_appbar.dart';
import 'package:pick_app/widgets/custom_button.dart';

import '../../routes/routes.dart';
import '../../utils/colors.dart';

class CarReservedScreen extends StatefulWidget {
  const CarReservedScreen({super.key});

  @override
  State<CarReservedScreen> createState() => _CarReservedScreenState();
}

class _CarReservedScreenState extends State<CarReservedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Dimensions.width20,
          vertical: Dimensions.height20,
        ),
        child: Column(
          children: [
            CustomAppBar(),
            SizedBox(height: Dimensions.height50),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      'BYD',
                      style: TextStyle(
                        fontSize: Dimensions.font17,
                        color: AppColors.grey4,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: Dimensions.width5),
                    Text(
                      'E2',
                      style: TextStyle(
                        fontSize: Dimensions.font17,
                        color: AppColors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Car No: 4507 BZ',
                      style: TextStyle(
                        fontSize: Dimensions.font17,
                        color: AppColors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: Dimensions.width5),
                    Text(
                      'Unlocks in 09:50',
                      style: TextStyle(
                        fontSize: Dimensions.font17,
                        color: AppColors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: Dimensions.height70),
                Image.asset(AppConstants.getPngAsset('atto3')),
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
                  child: Text(
                    'We will release this PickApp Car if you do not unlock it within 10 minutes',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: Dimensions.font17),
                  ),
                ),
                SizedBox(height: Dimensions.height40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppConstants.getPngAsset('navigate-icon'),
                      height: Dimensions.height30,
                    ),
                    SizedBox(width: Dimensions.width10),
                    Text(
                      'Navigate to Car',
                      style: TextStyle(
                        fontSize: Dimensions.font16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: Dimensions.height40),
                CustomButton(
                  text: 'Unlock',
                  onPressed: () {
                    Get.toNamed(AppRoutes.carUnlockedScreen);
                  },
                  backgroundColor: Colors.white,
                  borderRadius: BorderRadius.circular(Dimensions.radius30),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
