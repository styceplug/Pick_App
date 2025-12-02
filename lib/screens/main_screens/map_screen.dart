import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pick_app/utils/app_constants.dart';
import 'package:pick_app/utils/colors.dart';
import 'package:pick_app/utils/dimensions.dart';
import 'package:pick_app/widgets/custom_appbar.dart';

import '../../routes/routes.dart';
import '../../widgets/custom_bottom_modal.dart';
import '../../widgets/custom_button.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Dimensions.screenHeight,
            width: Dimensions.screenWidth,
            child: Image.asset(
              AppConstants.getPngAsset('map-mock'),
              fit: BoxFit.fill,
            ),
          ),
          Column(
            children: [
              CustomAppBar(
                chatContainerColor: AppColors.black,
                chatTextColor: AppColors.white,
                imageColor: AppColors.black,
              ),
              Spacer(),

              Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: Dimensions.width20,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: AlignmentGeometry.centerRight,
                      child: IntrinsicWidth(
                        child: CustomButton(
                          text: 'Select a car',
                          onPressed: () {},
                          borderRadius: BorderRadius.circular(
                            Dimensions.radius30,
                          ),
                          backgroundColor: AppColors.primaryColor.withOpacity(
                            0.67,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: Dimensions.height20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomButton(
                          text: 'Book',
                          onPressed: () {},
                          icon: Image.asset(
                            AppConstants.getPngAsset('book-icon'),
                            height: Dimensions.height30,
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
                        CustomButton(
                          text: 'Trips',
                          onPressed: () {},
                          icon: Image.asset(
                            AppConstants.getPngAsset('trips-icon'),
                            height: Dimensions.height30,
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
                        CustomButton(
                          text: 'Settings',
                          onPressed: () {},
                          icon: Image.asset(
                            AppConstants.getPngAsset('settings-icon'),
                            height: Dimensions.height30,
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
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: Dimensions.height100),
            ],
          ),
          Positioned(
            left: Dimensions.width100 * 1.25,
            top: Dimensions.height100 * 1.9,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: AppColors.cardColor,
                  barrierColor: Colors.black.withOpacity(0.6),
                  builder: (context) {
                    return CustomBottomModal(
                      height: MediaQuery.of(context).size.height * 0.85,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
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
                                'ATTO 3',
                                style: TextStyle(
                                  fontSize: Dimensions.font17,
                                  color: AppColors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '5 seats - Automatic',
                            style: TextStyle(fontSize: Dimensions.font15),
                          ),
                          Expanded(
                            child: Image.asset(
                              AppConstants.getPngAsset('atto3'),
                              height: Dimensions.height100 * 1.7,
                            ),
                          ),
                          OptionTile(
                            'Pricing',
                            '8000F/hr, change duration: 2hrs minimum',
                          ),
                          OptionTile('Destination', 'Agence Baguida, Orabank '),
                          OptionTile(
                            'Assisted Driver',
                            'Add driver for 2,000F/hr',
                          ),
                          OptionTile('Car info', 'Battery: 310km, 80%'),
                          OptionTile(
                            'Payment Method',
                            'Add a payment method or Top up',
                          ),
                          OptionTile(
                            'Total',
                            'Booked: 2hrs, Assisted driver: 20,000F',
                            bgColor: AppColors.primaryColor,
                            textColor: AppColors.white,
                          ),
                          SizedBox(height: Dimensions.height40),
                          CustomButton(
                            text: 'Book & Pay',
                            onPressed: () {
                              Get.toNamed(AppRoutes.carReservedScreen);
                            },
                            backgroundColor: AppColors.white,
                            borderRadius: BorderRadius.circular(
                              Dimensions.radius30,
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Image.asset(
                AppConstants.getPngAsset('car-icon'),
                height: Dimensions.height100,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget OptionTile(
    String title,
    String subtitle, {
    Color? bgColor,
    Color? textColor,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: Dimensions.height10,
        horizontal: Dimensions.width20,
      ),
      margin: EdgeInsets.only(bottom: Dimensions.height10),
      decoration: BoxDecoration(
        color: bgColor ?? AppColors.accentColor,
        borderRadius: BorderRadius.circular(Dimensions.radius20),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: Dimensions.font16,
                  ),
                ),
                Text(
                  subtitle,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: Dimensions.font15,
                    color: textColor ?? AppColors.grey4,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: Dimensions.width10),
          Icon(Icons.chevron_right, color: AppColors.white),
        ],
      ),
    );
  }
}
