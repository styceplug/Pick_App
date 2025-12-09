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

  final LocationController locationController = Get.find<LocationController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: Dimensions.height20),
            child: Column(
              children: [
                /// App Bar
                CustomAppBar(
                  chatContainerColor: AppColors.white,
                  chatTextColor: AppColors.black,
                  imageColor: AppColors.white,
                ),
          
                SizedBox(height: Dimensions.height100*2),
          
                /// Title
                Text(
                  'Where are you going?',
                  style: TextStyle(
                    fontSize: Dimensions.font22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
          
                SizedBox(height: Dimensions.height20),
          
                /// Search + Predictions list
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
                  child: Column(
                    children: [
                      /// Search Field
                      TextFormField(
                        controller: locationController.searchController,
                        maxLines: 1,
                        style: TextStyle(color: AppColors.white),
                        decoration: InputDecoration(
                          hintText: 'Type an address...',
                          hintStyle: TextStyle(
                            color: AppColors.white.withOpacity(0.5),
                          ),
                          filled: true,
                          fillColor: AppColors.accentColor,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: Dimensions.height20,
                            horizontal: Dimensions.width20,
                          ),
                          prefixIcon: Icon(
                            CupertinoIcons.search,
                            color: Colors.white,
                          ),
                          suffixIcon: InkWell(
                            onTap: () => locationController.clearSearch(),
                            child: Icon(Icons.cancel, color: Colors.white),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              Dimensions.radius30,
                            ),
                          ),
                        ),
                      ),
          
                      /// Predictions dropdown
                      Obx(() {
                        if (locationController.predictionList.isEmpty) {
                          return const SizedBox.shrink();
                        }
          
                        return Container(
                          margin: EdgeInsets.only(top: 10),
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
                                offset: Offset(0, 5),
                              ),
                            ],
                          ),
                          child: ListView.separated(
                            padding: EdgeInsets.all(Dimensions.height10),
                            itemCount: locationController.predictionList.length,
                            separatorBuilder:
                                (context, index) =>
                                    Divider(color: Colors.white24),
                            itemBuilder: (_, index) {
                              final item =
                                  locationController.predictionList[index];
          
                              return ListTile(
                                onTap: () {
                                  locationController.onPlaceSelected(
                                    item['description'],
                                    item['place_id'],
                                  );
                                },
                                title: Text(
                                  item['structured_formatting']['main_text'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                subtitle: Text(
                                  item['description'],
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: Colors.white70),
                                ),
                              );
                            },
                          ),
                        );
                      }),
                    ],
                  ),
                ),
          
                SizedBox(height: Dimensions.height100*3.2),
          
                /// Bottom Buttons
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _bottomButton(
                        text: "Book",
                        icon: "book-icon",
                        onTap: () {},
                      ),
                      _bottomButton(
                        text: "Trips",
                        icon: "trips-icon",
                        onTap: () {},
                      ),
                      _bottomButton(
                        text: "Settings",
                        icon: "settings-icon",
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
          
                SizedBox(height: Dimensions.height40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _bottomButton({
    required String text,
    required String icon,
    required VoidCallback onTap,
  }) {
    return CustomButton(
      text: text,
      onPressed: onTap,
      icon: Image.asset(
        AppConstants.getPngAsset(icon),
        height: Dimensions.height30,
      ),
      backgroundColor: AppColors.accentColor,
      borderRadius: BorderRadius.circular(Dimensions.radius20),
      padding: EdgeInsets.symmetric(
        vertical: Dimensions.height10 * 0.7,
        horizontal: Dimensions.width20,
      ),
    );
  }
}
