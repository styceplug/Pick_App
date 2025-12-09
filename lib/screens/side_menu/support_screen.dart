import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pick_app/utils/app_constants.dart';
import 'package:pick_app/utils/dimensions.dart';
import 'package:pick_app/widgets/custom_textfield.dart';

import '../../utils/colors.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.white),
        backgroundColor: AppColors.black,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(
            horizontal: Dimensions.width20,
            vertical: Dimensions.height20,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Support',
                        style: TextStyle(
                          fontSize: Dimensions.font20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Chat with us',
                        style: TextStyle(
                          fontSize: Dimensions.font14,
                          fontWeight: FontWeight.w300,
                          color: AppColors.grey4,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Call',
                    style: TextStyle(
                      fontSize: Dimensions.font16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: Dimensions.height40),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    AppConstants.getPngAsset('help-desk'),
                    height: Dimensions.height70,
                    width: Dimensions.width70,
                  ),
                  SizedBox(width: Dimensions.width20),
                  Expanded(
                    child: Container(
                      width: Dimensions.screenWidth,
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.width20,
                        vertical: Dimensions.height20,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.accentColor,
                        borderRadius: BorderRadius.circular(
                          Dimensions.radius10,
                        ),
                      ),
                      child: Text(
                        '👋 Hi there! Welcome to PickApp 🚗  How can we assist you today? Whether you need help booking a car, unlocking a vehicle, or topping up your account, we\'re here to help!',
                        style: TextStyle(fontSize: Dimensions.font16),
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              CustomTextField(
                hintText: 'Type a message...',
                borderRadius: BorderRadius.circular(Dimensions.radius30),
                prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.width15),
                  child: Icon(Icons.attachment),
                ),
                suffixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
                  child: Icon(Iconsax.send_15, color: AppColors.primaryColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
