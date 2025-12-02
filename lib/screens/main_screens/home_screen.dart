import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pick_app/widgets/custom_appbar.dart';
import 'package:pick_app/widgets/custom_drawer.dart';
import '../../controllers/location_controller.dart';
import '../../utils/app_constants.dart';
import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import '../../widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  // Initialize the controller
  final LocationController locationController = Get.find<LocationController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: CustomDrawer(),
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: Dimensions.height20,
        ),
        child: Column(
          children: [

            CustomAppBar(
              chatContainerColor: AppColors.white,
              chatTextColor: AppColors.black,
              imageColor: AppColors.white,            ),

            Spacer(),

            Text(
              'Where are you going?',
              style: TextStyle(
                fontSize: Dimensions.font20,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: Dimensions.height20),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
              child: Stack(
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
                              color: AppColors.white.withOpacity(0.5)),
                          hintText: 'Type an address...',
                          prefix: Padding(
                            padding: EdgeInsets.only(
                              left: Dimensions.width5,
                              right: Dimensions.width15,
                            ),
                            child: Icon(CupertinoIcons.search,
                                color: AppColors.white),
                          ),
                          border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.circular(Dimensions.radius30),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.circular(Dimensions.radius30),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.circular(Dimensions.radius30),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Obx(() {
                    return locationController.predictionList.isNotEmpty
                        ? Container(
                      margin: EdgeInsets.only(
                          top: Dimensions.height65 + 5),
                      height: 250,
                      decoration: BoxDecoration(
                        color: AppColors.cardColor,
                        borderRadius:
                        BorderRadius.circular(Dimensions.radius20),
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
                        separatorBuilder: (context, index) =>
                        const Divider(),
                        itemBuilder: (context, index) {
                          return ListTile(
                            onTap: () {
                              locationController.onPlaceSelected(
                                locationController.predictionList[index]['description'],
                                locationController.predictionList[index]['place_id'],
                              );
                            },

                            title: Text(
                              locationController.predictionList[index]
                              ['structured_formatting']
                              ['main_text'],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            subtitle: Text(
                              locationController.predictionList[index]
                              ['description'],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style:  TextStyle(color: Colors.white70),
                            ),
                          );
                        },
                      ),
                    )
                        : const SizedBox.shrink();
                  }),
                ],
              ),
            ),

            Spacer(),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
              child: Row(
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
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
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
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
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
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    padding: EdgeInsets.symmetric(
                      vertical: Dimensions.height10 * 0.7,
                      horizontal: Dimensions.width20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimensions.height100),
          ],
        ),
      ),
    );
  }
}