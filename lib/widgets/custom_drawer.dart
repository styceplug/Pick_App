import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pick_app/utils/app_constants.dart';
import 'package:pick_app/utils/colors.dart';

import '../utils/dimensions.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.black,
      child: Padding(
        padding: EdgeInsets.only(left: Dimensions.width20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Dimensions.height100),
            Image.asset(
              AppConstants.getPngAsset('pick-app'),
              width: Dimensions.width100 * 1.2,
            ),
            SizedBox(height: Dimensions.height50),
            Text(
              'Balance',
              style: TextStyle(
                fontSize: Dimensions.font14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '35,000.00F',
              style: TextStyle(
                fontSize: Dimensions.font17,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: Dimensions.height50),

            buildDrawerItem(icon: 'wallet-icon', text: 'Wallet', onTap: () {}),
            buildDrawerItem(
              icon: 'profile-icon',
              text: 'Profile',
              onTap: () {},
            ),
            buildDrawerItem(
              icon: 'kyc-icon',
              text: 'KYC Verification',
              onTap: () {},
            ),
            buildDrawerItem(icon: 'trips-icon', text: 'Trips', onTap: () {}),
            buildDrawerItem(
              icon: 'support-icon',
              text: 'Support',
              onTap: () {},
            ),
            buildDrawerItem(
              icon: 'faq-icon',
              text: 'Help and FAQs',
              onTap: () {},
            ),
            SizedBox(height: Dimensions.height50),
            Text(
              'Log out',
              style: TextStyle(
                fontSize: Dimensions.font18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Spacer(),
            Row(
              children: [
                Container(
                  height: Dimensions.height50,
                  width: Dimensions.width50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primaryColor,
                  ),
                ),
                SizedBox(width: Dimensions.width10),
                Text(
                  'Joseph Lawson',
                  style: TextStyle(
                    fontSize: Dimensions.font15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: Dimensions.width10),
                Image.asset(
                  AppConstants.getPngAsset('verified-icon'),
                  height: Dimensions.height15,
                ),
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  Widget buildDrawerItem({
    required String icon,
    required String text,
    required VoidCallback onTap,
    Color? textColor,
    Color? iconColor,
  }) {
    return ListTile(
      leading: Image.asset(
        AppConstants.getPngAsset(icon),
        height: Dimensions.height30,
        width: Dimensions.width30,
      ),
      title: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: Dimensions.font16,
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: () {
        // Close drawer first
        // Navigator.pop(context);
        onTap();
      },
      contentPadding: EdgeInsets.symmetric(vertical: 0),
    );
  }
}
