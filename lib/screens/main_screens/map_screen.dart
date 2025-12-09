import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pick_app/controllers/location_controller.dart';
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
  bool isSwitched = false;
  LocationController locationController = Get.find<LocationController>();


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
                      height: MediaQuery.of(context).size.height * 0.9,
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
                                'E2',
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
                          Align(
                            alignment: AlignmentGeometry.center,
                            child: Image.asset(
                              AppConstants.getPngAsset('atto3'),
                              height: Dimensions.height100 * 1.7,
                            ),
                          ),
                          OptionTile(
                            'Pricing',
                            '8000F/hr, change duration: 2hrs minimum',
                          ),
                          OptionTile('Destination', '${locationController.destinationName.value}',                            onTap: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              backgroundColor: AppColors.cardColor,
                              barrierColor: Colors.black.withOpacity(0.6),
                              builder: (context) {
                                return StatefulBuilder(
                                  builder: (BuildContext context, StateSetter setModalState) {
                                    return CustomBottomModal(
                                      height: MediaQuery.of(context).size.height * 0.7,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Location',
                                            style: TextStyle(
                                              fontSize: Dimensions.font20,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(height: Dimensions.height10),
                                          Divider(color: AppColors.grey5.withOpacity(0.2)),
                                          Stack(
                                            children: [
                                              Column(
                                                children: [
                                                  TextFormField(
                                                    controller: locationController.searchController,
                                                    maxLines: 1,
                                                    autofillHints: const [AutofillHints.location],
                                                    style: TextStyle(color: AppColors.white),
                                                    decoration: InputDecoration(
                                                      contentPadding: EdgeInsets.symmetric(
                                                        vertical: Dimensions.height20,
                                                        horizontal: Dimensions.width20,
                                                      ),
                                                      filled: true,
                                                      fillColor: AppColors.accentColor,
                                                      hintStyle: TextStyle(
                                                        color: AppColors.white.withOpacity(0.5),
                                                      ),
                                                      hintText: 'Type an address...',
                                                      prefix: Padding(
                                                        padding: EdgeInsets.only(
                                                          left: Dimensions.width5,
                                                          right: Dimensions.width15,
                                                        ),
                                                        child: Icon(
                                                          CupertinoIcons.search,
                                                          color: AppColors.white,
                                                          size: Dimensions.iconSize20,
                                                        ),
                                                      ),
                                                      suffixIcon: InkWell(
                                                        onTap: () {
                                                          locationController.searchController.clear();
                                                        },
                                                        child: Padding(
                                                          padding: EdgeInsets.only(right: Dimensions.width15),
                                                          child: Icon(Icons.cancel, color: Colors.white),
                                                        ),
                                                      ),
                                                      border: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(
                                                          Dimensions.radius30,
                                                        ),
                                                      ),
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(
                                                          Dimensions.radius30,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(
                                                          Dimensions.radius30,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),

                                              Obx(() {
                                                return locationController.predictionList.isNotEmpty
                                                    ? Container(
                                                  margin: EdgeInsets.only(top: Dimensions.height65 + 5),
                                                  height: 250,
                                                  decoration: BoxDecoration(
                                                    color: AppColors.cardColor,
                                                    borderRadius: BorderRadius.circular(
                                                      Dimensions.radius20,
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.black.withOpacity(0.2),
                                                        blurRadius: 10,
                                                        offset: const Offset(0, 5),
                                                      ),
                                                    ],
                                                  ),
                                                  child: ListView.separated(
                                                    padding: EdgeInsets.all(Dimensions.height10),
                                                    itemCount: locationController.predictionList.length,
                                                    shrinkWrap: true,
                                                    separatorBuilder:
                                                        (context, index) => Divider(
                                                      color: AppColors.grey5.withOpacity(0.3),
                                                    ),
                                                    itemBuilder: (context, index) {
                                                      return ListTile(
                                                        onTap: () {
                                                          locationController.onPlaceSelected(
                                                            locationController
                                                                .predictionList[index]['description'],
                                                            locationController
                                                                .predictionList[index]['place_id'],
                                                          );
                                                        },

                                                        title: Text(
                                                          locationController
                                                              .predictionList[index]['structured_formatting']['main_text'],
                                                          style: const TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                        subtitle: Text(
                                                          locationController
                                                              .predictionList[index]['description'],
                                                          maxLines: 1,
                                                          overflow: TextOverflow.ellipsis,
                                                          style: TextStyle(color: Colors.white70),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                )
                                                    : const SizedBox.shrink();
                                              }),
                                            ],
                                          ),
                                          SizedBox(height: Dimensions.height10),
                                          Divider(color: AppColors.grey5.withOpacity(0.2)),

                                          Text(
                                            'Update your location before proceeding',
                                            style: TextStyle(
                                              fontSize: Dimensions.font15,
                                              color: AppColors.grey3,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                            );
                          },
                          ),
                          OptionTile(
                            'Assisted Driver',
                            'Add driver for 2,000F/hr',
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                backgroundColor: AppColors.cardColor,
                                barrierColor: Colors.black.withOpacity(0.6),
                                builder: (context) {
                                  return StatefulBuilder(
                                    builder: (BuildContext context, StateSetter setModalState) {
                                      return CustomBottomModal(
                                        height: MediaQuery.of(context).size.height * 0.3,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Add On',
                                              style: TextStyle(
                                                fontSize: Dimensions.font20,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox(height: Dimensions.height10),
                                            Divider(color: AppColors.grey5.withOpacity(0.2)),

                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  'Assisted Driver',
                                                  style: TextStyle(
                                                    fontSize: Dimensions.font18,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      '2,000',
                                                      style: TextStyle(
                                                        fontSize: Dimensions.font16,
                                                        fontWeight: FontWeight.w600,
                                                        color: AppColors.primaryColor,
                                                      ),
                                                    ),
                                                    SizedBox(width: Dimensions.width10),
                                                    CupertinoSwitch(
                                                      value: isSwitched,
                                                      activeColor: AppColors.primaryColor,
                                                      onChanged: (bool value) {
                                                        setModalState(() {
                                                          isSwitched = value;
                                                        });
                                                        setState(() {
                                                          isSwitched = value;
                                                        });
                                                      },
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                            SizedBox(height: Dimensions.height10),
                                            Divider(color: AppColors.grey5.withOpacity(0.2)),

                                            Text(
                                              'Add a driver to help you drive around.',
                                              style: TextStyle(
                                                fontSize: Dimensions.font15,
                                                color: AppColors.grey3,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            )
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                              );
                            },
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
                          SizedBox(height: Dimensions.height30),
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
                          SizedBox(height: Dimensions.height40),
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
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: Dimensions.height10,
          horizontal: Dimensions.width20,
        ),
        margin: EdgeInsets.only(bottom: Dimensions.height10 * 1.2),
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
      ),
    );
  }
}
