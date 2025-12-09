import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/dimensions.dart';

class HelpFaqScreen extends StatefulWidget {
  const HelpFaqScreen({super.key});

  @override
  State<HelpFaqScreen> createState() => _HelpFaqScreenState();
}

class _HelpFaqScreenState extends State<HelpFaqScreen> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'FAQ',
                style: TextStyle(
                  fontSize: Dimensions.font20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Frequently Asked Questions',
                style: TextStyle(
                  fontSize: Dimensions.font14,
                  fontWeight: FontWeight.w300,
                  color: AppColors.grey4,
                ),
              ),
              SizedBox(height: Dimensions.height40),
              Text(
                'How do I book a car?',
                style: TextStyle(
                  fontSize: Dimensions.font17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: Dimensions.height5),
              Text(
                'To book a car, simply log in, select your preferred vehicle, choose your time slot, and confirm your reservation. Make sure your balance is sufficient.',
                style: TextStyle(
                  fontSize: Dimensions.font14,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: Dimensions.height5),
              Divider(color: AppColors.grey5),
              SizedBox(height: Dimensions.height20),
              Text(
                'How do I unlock the car?',
                style: TextStyle(
                  fontSize: Dimensions.font17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: Dimensions.height5),
              Text(
                'Once at the vehicle, scan the QR code on the windshield or window using the app. The car will unlock automatically if your booking is active. Click to watch a videos',
                style: TextStyle(
                  fontSize: Dimensions.font14,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: Dimensions.height5),
              Divider(color: AppColors.grey5),
              SizedBox(height: Dimensions.height20),
              Text(
                'How do I top up my balance?',
                style: TextStyle(
                  fontSize: Dimensions.font17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: Dimensions.height5),
              Text(
                'Go to the Wallet section in the app and choose your preferred top-up method (Mobile Money, card, etc.). You must have enough balance to complete a reservation.',
                style: TextStyle(
                  fontSize: Dimensions.font14,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: Dimensions.height5),
              Divider(color: AppColors.grey5),
              SizedBox(height: Dimensions.height20),
              Text(
                'What happens if I\'m late to return the car?',
                style: TextStyle(
                  fontSize: Dimensions.font17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: Dimensions.height5),
              Text(
                'Extra time will be charged based on your hourly rate. If you\'re running late, please update your booking or contact support to avoid penalties.',
                style: TextStyle(
                  fontSize: Dimensions.font14,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: Dimensions.height5),
              Divider(color: AppColors.grey5),
            ],
          ),
        ),
      ),
    );
  }
}
