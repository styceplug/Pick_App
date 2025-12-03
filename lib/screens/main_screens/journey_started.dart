import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pick_app/routes/routes.dart';
import 'package:pick_app/utils/app_constants.dart';
import 'package:pick_app/utils/colors.dart';
import 'package:pick_app/utils/dimensions.dart';
import 'package:pick_app/widgets/custom_appbar.dart';

import '../../widgets/custom_button.dart';

class JourneyStartedScreen extends StatefulWidget {
  const JourneyStartedScreen({super.key});

  @override
  State<JourneyStartedScreen> createState() => _JourneyStartedScreenState();
}

class _JourneyStartedScreenState extends State<JourneyStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Dimensions.screenHeight,
            width: Dimensions.screenWidth,
            child: Image.asset(
              AppConstants.getPngAsset('map-mock2'),
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              CustomAppBar(
                imageColor: AppColors.black,
                chatTextColor: Colors.transparent,
                chatContainerColor: Colors.transparent,
              ),
              Spacer(),
              Align(
                alignment: AlignmentGeometry.centerRight,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFE64040),
                          shape: BoxShape.circle,
                        ),
                        height: Dimensions.height40,
                        width: Dimensions.width40,
                        padding: EdgeInsets.symmetric(
                          horizontal: Dimensions.width10,
                          vertical: Dimensions.height10,
                        ),
                        child: Image.asset(
                          AppConstants.getPngAsset('phone-icon'),
                          color: Colors.white,
                        ),
                      ),
                      Text('Call', style: TextStyle(color: AppColors.black)),
                      SizedBox(height: Dimensions.height30),
                      Container(
                        height: Dimensions.height50,
                        width: Dimensions.width50,
                        child: Image.asset(
                          AppConstants.getPngAsset('chat-bubble'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text('Chat', style: TextStyle(color: AppColors.black)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: Dimensions.height70),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IntrinsicWidth(
                      child: CustomButton(
                        text: 'Top up',
                        onPressed: () {},
                        icon: Image.asset(
                          AppConstants.getPngAsset('wallet-icon'),
                          height: Dimensions.height30,
                          width: Dimensions.width30,
                        ),
                        backgroundColor: AppColors.accentColor,
                        borderRadius: BorderRadius.circular(
                          Dimensions.radius20,
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: Dimensions.height10 * 0.7,
                          horizontal: Dimensions.width20,
                        ),
                      ),
                    ),
                    SizedBox(width: Dimensions.width10),
                    IntrinsicWidth(
                      child: CustomButton(
                        text: '2:10',
                        onPressed: () {},
                        icon: Image.asset(
                          AppConstants.getPngAsset('clock-icon'),
                          height: Dimensions.height30,
                          width: Dimensions.width30,
                        ),
                        backgroundColor: AppColors.accentColor,
                        borderRadius: BorderRadius.circular(
                          Dimensions.radius20,
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: Dimensions.height10 * 0.7,
                          horizontal: Dimensions.width10,
                        ),
                      ),
                    ),
                    SizedBox(width: Dimensions.width10),
                    IntrinsicWidth(
                      child: CustomButton(
                        text: 'End Trip',
                        onPressed: () {
                          Get.toNamed(AppRoutes.endTripScreen);
                        },
                        icon: Image.asset(
                          AppConstants.getPngAsset('drive-icon'),
                          height: Dimensions.height30,
                          width: Dimensions.width30,
                        ),
                        backgroundColor: Color(0XFFE43434),
                        borderRadius: BorderRadius.circular(
                          Dimensions.radius20,
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: Dimensions.height10 * 0.7,
                          horizontal: Dimensions.width20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: Dimensions.height20 * 5),
            ],
          ),
        ],
      ),
    );
  }
}
