import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pick_app/widgets/custom_appbar.dart';
import 'package:pick_app/widgets/custom_drawer.dart';
import 'package:pick_app/widgets/custom_textfield.dart';

import '../../routes/routes.dart';
import '../../utils/app_constants.dart';
import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import '../../widgets/custom_button.dart';

class DurationScreen extends StatefulWidget {
  const DurationScreen({super.key});

  @override
  State<DurationScreen> createState() => _DurationScreenState();
}

class _DurationScreenState extends State<DurationScreen> {
  TextEditingController durationController = TextEditingController();

  @override
  void initState() {
    super.initState();
    durationController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    durationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: CustomDrawer(
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: Dimensions.height20,
        ),
        child: Column(
          children: [
            CustomAppBar(
              chatContainerColor: AppColors.white,
              chatTextColor: AppColors.black,
              imageColor: AppColors.white,
            ),

            const Spacer(),

            Text(
              'How long will you use the car?',
              style: TextStyle(
                fontSize: Dimensions.font20,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: Dimensions.height30),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
              child: Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                        controller: durationController,
                        hintText: 'Set the duration',
                        maxLines: 1,
                        textColor: Colors.white,
                        keyboardType: TextInputType.number,
                        borderRadius: BorderRadius.circular(Dimensions.radius30),
                        backgroundColor: AppColors.accentColor),
                  ),
                  SizedBox(width: Dimensions.width20),
                  if (durationController.text.isEmpty)
                    Text('Hours'),
                  if (durationController.text.isNotEmpty)
                    CustomButton(
                      text: 'Continue',
                      onPressed: () {
                        Get.toNamed(AppRoutes.mapScreen);
                      },
                      padding: EdgeInsets.symmetric(
                        vertical: Dimensions.height10,
                        horizontal: Dimensions.width10,
                      ),
                      backgroundColor: Colors.white,
                      borderRadius: BorderRadius.circular(Dimensions.radius30),
                    )
                ],
              ),
            ),
            SizedBox(height: Dimensions.height20),

            const Spacer(),

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
            SizedBox(height: Dimensions.height100),
          ],
        ),
      ),
    );
  }
}
