import 'package:flutter/material.dart';
import 'package:pick_app/utils/app_constants.dart';
import 'package:pick_app/utils/dimensions.dart';
import 'package:pick_app/widgets/custom_button.dart';
import 'package:pick_app/widgets/custom_textfield.dart';

import '../../utils/colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.white),
        backgroundColor: AppColors.black,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.width20,
            vertical: Dimensions.height20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Profile',
                        style: TextStyle(
                          fontSize: Dimensions.font20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Update your information',
                        style: TextStyle(
                          fontSize: Dimensions.font14,
                          fontWeight: FontWeight.w300,
                          color: AppColors.grey4,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: Dimensions.height70,
                    width: Dimensions.width70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.accentColor,
                    ),
                    child: Image.asset(AppConstants.getPngAsset('dp-image')),
                  ),
                ],
              ),
              SizedBox(height: Dimensions.height20),
              Text(
                'Enter your phone number',
                style: TextStyle(
                  fontSize: Dimensions.font18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: Dimensions.height10),
              Row(
                children: [
                  IntrinsicWidth(child: CustomTextField(hintText: '+234')),
                  SizedBox(width: Dimensions.width20),
                  Expanded(child: CustomTextField(hintText: '90060086')),
                ],
              ),
              SizedBox(height: Dimensions.height20),
              Text(
                'Email',
                style: TextStyle(
                  fontSize: Dimensions.font18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: Dimensions.height10),
              CustomTextField(hintText: 'josephlawson@gmail.com'),
              SizedBox(height: Dimensions.height20),
              Text(
                'First name',
                style: TextStyle(
                  fontSize: Dimensions.font18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: Dimensions.height10),
              CustomTextField(hintText: 'Joseph'),
              SizedBox(height: Dimensions.height20),
              Text(
                'Last name',
                style: TextStyle(
                  fontSize: Dimensions.font18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: Dimensions.height10),
              CustomTextField(hintText: 'Lawson'),
              SizedBox(height: Dimensions.height20),
              Text(
                'Disable Account',
                style: TextStyle(
                  fontSize: Dimensions.font18,
                  color: AppColors.error,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: Dimensions.height50),
              CustomButton(
                text: 'Update',
                onPressed: () {},
                backgroundColor: Colors.white,
                borderRadius: BorderRadius.circular(Dimensions.radius30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
