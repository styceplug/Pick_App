import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pick_app/widgets/custom_textfield.dart';
import '../../routes/routes.dart';
import '../../utils/app_constants.dart';
import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import '../../widgets/custom_bottom_modal.dart';
import '../../widgets/custom_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsetsGeometry.symmetric(
          horizontal: Dimensions.width20,
          vertical: Dimensions.height70,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: AlignmentGeometry.centerRight,
              child: IntrinsicWidth(
                child: CustomButton(
                  padding: EdgeInsets.symmetric(
                    vertical: Dimensions.height5,
                    horizontal: Dimensions.width15,
                  ),
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  text: 'Skip',
                  onPressed: () {
                    Get.offAllNamed(AppRoutes.homeScreen);
                  },
                  backgroundColor: AppColors.white,
                ),
              ),
            ),
            Spacer(),
            Image.asset(
              AppConstants.getPngAsset('pick-app'),
              width: Dimensions.screenWidth - Dimensions.width100 * 2,
            ),
            Image.asset(
              AppConstants.getGifAsset('onboard'),
              width: Dimensions.screenWidth - Dimensions.width100 * 2,
            ),
            SizedBox(height: Dimensions.height100),
            /// CTAS
            //apple
            CustomButton(
              text: 'Continue with Apple',
              onPressed: () {
                Get.toNamed(AppRoutes.introductionScreen);
              },
              backgroundColor: AppColors.white,
              icon: Image.asset(
                AppConstants.getPngAsset('apple-icon'),
                height: Dimensions.height10 * 2.5,
                width: Dimensions.width10 * 2.5,
              ),
            ),
            SizedBox(height: Dimensions.height20),
            //google
            CustomButton(
              text: 'Continue with Google',
              onPressed: () {
                Get.toNamed(AppRoutes.introductionScreen);
              },
              backgroundColor: AppColors.accentColor,
              icon: Image.asset(
                AppConstants.getPngAsset('google-icon'),
                height: Dimensions.height10 * 1.6,
                width: Dimensions.width10 * 1.6,
              ),
            ),
            SizedBox(height: Dimensions.height20),
            //phone
            CustomButton(
              text: 'Continue with phone',
              onPressed: () {
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
                          SizedBox(height: Dimensions.height20),
                          Text(
                            'Hello Sign in',
                            style: TextStyle(
                              fontSize: Dimensions.font20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'to access a fleet of electric vehicles',
                            style: TextStyle(
                              fontSize: Dimensions.font16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: Dimensions.height20),
                          Text(
                            'Country/Region',
                            style: TextStyle(
                              fontSize: Dimensions.font14,
                            ),
                          ),
                          SizedBox(height: Dimensions.height5),
                          CustomTextField(
                            prefixIcon: Padding(
                              padding: EdgeInsets.zero,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    width: Dimensions.width15,
                                  ),
                                  Text(
                                    'Togo (+228)',
                                    style: TextStyle(
                                      color: AppColors.grey4,
                                      fontSize: Dimensions.font18,
                                    ),
                                  ),
                                  SizedBox(
                                    width: Dimensions.width15,
                                  ),
                                ],
                              ),
                            ),
                            maxLines: 1,
                            keyboardType: TextInputType.number,
                          ),
                          SizedBox(height: Dimensions.height20),
                          Text(
                            'Phone',
                            style: TextStyle(
                              fontSize: Dimensions.font14,
                            ),
                          ),
                          SizedBox(height: Dimensions.height5),
                          CustomTextField(
                            hintText: 'Phone number',
                          ),
                          SizedBox(height: Dimensions.height20),
                          Text(
                            'Password',
                            style: TextStyle(
                              fontSize: Dimensions.font14,
                            ),
                          ),
                          SizedBox(height: Dimensions.height5),
                          CustomTextField(hintText: 'Password'),
                          SizedBox(height: Dimensions.height20),
                          CustomButton(
                            text: 'Continue with Apple',
                            onPressed: () {
                              Get.toNamed(AppRoutes.introductionScreen);

                            },
                            backgroundColor: AppColors.white,
                            icon: Image.asset(
                              AppConstants.getPngAsset('apple-icon'),
                              height: Dimensions.height10 * 2.5,
                              width: Dimensions.width10 * 2.5,
                            ),
                          ),
                          SizedBox(height: Dimensions.height20),
                          CustomButton(
                            text: 'Continue with Google',
                            onPressed: () {
                              Get.toNamed(AppRoutes.introductionScreen);

                            },
                            backgroundColor: AppColors.accentColor,
                            icon: Image.asset(
                              AppConstants.getPngAsset('google-icon'),
                              height: Dimensions.height10 * 1.6,
                              width: Dimensions.width10 * 1.6,
                            ),
                          ),
                          SizedBox(height: Dimensions.height20),
                          CustomButton(
                            text: 'Continue with email',
                            onPressed: () {},
                            backgroundColor: AppColors.accentColor,
                            icon: Image.asset(
                              AppConstants.getPngAsset('mail-icon'),
                              height: Dimensions.height10 * 2.5,
                              width: Dimensions.width10 * 3,
                            ),
                          ),
                          SizedBox(height: Dimensions.height20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Don\'t have an account?',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: Dimensions.font16,
                                ),
                              ),
                              SizedBox(width: Dimensions.width5),
                              Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: Dimensions.font16,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: Dimensions.height20),
                          CustomButton(
                            text: 'Continue',
                            onPressed: (){
                              print('Continue tapped');
                              Get.toNamed(AppRoutes.introductionScreen);
                            },
                            backgroundColor: AppColors.white,
                            borderRadius: BorderRadius.circular(Dimensions.radius30),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },

              backgroundColor: AppColors.accentColor,
              icon: Image.asset(
                AppConstants.getPngAsset('phone-icon'),
                height: Dimensions.height10 * 1.8,
                width: Dimensions.width10 * 1.8,
              ),
            ),
            SizedBox(height: Dimensions.height20),
            //email
            CustomButton(
              text: 'Continue with email',
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: AppColors.cardColor,
                  barrierColor: Colors.black.withOpacity(0.6),
                  builder: (context) {
                    return CustomBottomModal(
                      height: MediaQuery.of(context).size.height * 0.8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: Dimensions.height20),
                          Text(
                            'Hello Sign in',
                            style: TextStyle(
                              fontSize: Dimensions.font20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'to access a fleet of electric vehicles',
                            style: TextStyle(
                              fontSize: Dimensions.font16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: Dimensions.height20),
                          Text(
                            'Email',
                            style: TextStyle(fontSize: Dimensions.font14),
                          ),
                          SizedBox(height: Dimensions.height5),
                          CustomTextField(hintText: 'Email address'),
                          SizedBox(height: Dimensions.height20),
                          Text(
                            'Password',
                            style: TextStyle(fontSize: Dimensions.font14),
                          ),
                          SizedBox(height: Dimensions.height5),
                          CustomTextField(hintText: 'Password'),
                          SizedBox(height: Dimensions.height20),
                          CustomButton(
                            text: 'Continue with Apple',
                            onPressed: () {
                              Get.toNamed(AppRoutes.introductionScreen);

                            },
                            backgroundColor: AppColors.white,
                            icon: Image.asset(
                              AppConstants.getPngAsset('apple-icon'),
                              height: Dimensions.height10 * 2.5,
                              width: Dimensions.width10 * 2.5,
                            ),
                          ),
                          SizedBox(height: Dimensions.height20),
                          CustomButton(
                            text: 'Continue with Google',
                            onPressed: () {
                              Get.toNamed(AppRoutes.introductionScreen);

                            },
                            backgroundColor: AppColors.accentColor,
                            icon: Image.asset(
                              AppConstants.getPngAsset('google-icon'),
                              height: Dimensions.height10 * 1.6,
                              width: Dimensions.width10 * 1.6,
                            ),
                          ),
                          SizedBox(height: Dimensions.height20),
                          CustomButton(
                            text: 'Continue with phone',
                            onPressed: () {},
                            backgroundColor: AppColors.accentColor,
                            icon: Image.asset(
                              AppConstants.getPngAsset('phone-icon'),
                              height: Dimensions.height10 * 1.8,
                              width: Dimensions.width10 * 1.8,
                            ),
                          ),
                          SizedBox(height: Dimensions.height20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Don\'t have an account?',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: Dimensions.font16,
                                ),
                              ),
                              SizedBox(width: Dimensions.width5),
                              Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: Dimensions.font16,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: Dimensions.height20),
                          CustomButton(
                            text: 'Continue',
                            onPressed: (){
                              print('Continue tapped');
                              Get.toNamed(AppRoutes.introductionScreen);
                            },
                            backgroundColor: AppColors.white,
                            borderRadius: BorderRadius.circular(Dimensions.radius30),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              backgroundColor: AppColors.accentColor,
              icon: Image.asset(
                AppConstants.getPngAsset('mail-icon'),
                height: Dimensions.height10 * 2.5,
                width: Dimensions.width10 * 3,
              ),
            ),
            SizedBox(height: Dimensions.height40),
            //sign up
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: AppColors.cardColor,
                  barrierColor: Colors.black.withOpacity(0.6),
                  builder: (context) {
                    return CustomBottomModal(
                      height: MediaQuery.of(context).size.height * 0.7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: Dimensions.height20),
                          Text(
                            'Hello Sign up',
                            style: TextStyle(
                              fontSize: Dimensions.font18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'to access a fleet of electric vehicles',
                            style: TextStyle(
                              fontSize: Dimensions.font15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: Dimensions.height20),
                          Text(
                            'First name',
                            style: TextStyle(fontSize: Dimensions.font14),
                          ),
                          SizedBox(height: Dimensions.height5),
                          CustomTextField(hintText: 'First name'),
                          SizedBox(height: Dimensions.height20),
                          Text(
                            'Last name',
                            style: TextStyle(fontSize: Dimensions.font14),
                          ),
                          SizedBox(height: Dimensions.height5),
                          CustomTextField(hintText: 'Last name'),
                          SizedBox(height: Dimensions.height20),
                          Text(
                            'Date of birth',
                            style: TextStyle(fontSize: Dimensions.font14),
                          ),
                          SizedBox(height: Dimensions.height5),
                          Row(
                            children: [
                              Expanded(
                                child: CustomTextField(hintText: 'Month'),
                              ),
                              SizedBox(width: Dimensions.width10),
                              Expanded(child: CustomTextField(hintText: 'Day')),
                              SizedBox(width: Dimensions.width10),
                              Expanded(
                                child: CustomTextField(hintText: 'Year'),
                              ),
                            ],
                          ),
                          SizedBox(height: Dimensions.height20),
                          Text(
                            'Nationality',
                            style: TextStyle(fontSize: Dimensions.font14),
                          ),
                          SizedBox(height: Dimensions.height5),
                          CustomTextField(hintText: 'Nationality'),
                          SizedBox(height: Dimensions.height20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Do you have an account?',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: Dimensions.font16,
                                ),
                              ),
                              SizedBox(width: Dimensions.width5),
                              Text(
                                'Sign in',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: Dimensions.font16,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: Dimensions.height20),
                          CustomButton(
                            text: 'Continue',
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                backgroundColor: AppColors.cardColor,
                                barrierColor: Colors.black.withOpacity(0.6),
                                builder: (context) {
                                  return CustomBottomModal(
                                    height:
                                        MediaQuery.of(context).size.height *
                                        0.8,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(height: Dimensions.height20),
                                        Text(
                                          'Almost there',
                                          style: TextStyle(
                                            fontSize: Dimensions.font18,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(height: Dimensions.height20),
                                        InkWell(
                                          onTap: () {
                                            Get.back();
                                          },
                                          child: Icon(Icons.chevron_left,color: AppColors.white,size: Dimensions.iconSize30,),
                                        ),
                                        SizedBox(height: Dimensions.height20),
                                        Text(
                                          'Email',
                                          style: TextStyle(
                                            fontSize: Dimensions.font14,
                                          ),
                                        ),
                                        SizedBox(height: Dimensions.height5),
                                        CustomTextField(
                                          hintText: 'Email address',
                                        ),
                                        SizedBox(height: Dimensions.height20),
                                        Text(
                                          'Password',
                                          style: TextStyle(
                                            fontSize: Dimensions.font14,
                                          ),
                                        ),
                                        SizedBox(height: Dimensions.height5),
                                        CustomTextField(hintText: 'Password'),
                                        SizedBox(height: Dimensions.height20),
                                        Text(
                                          'Country/Region',
                                          style: TextStyle(
                                            fontSize: Dimensions.font14,
                                          ),
                                        ),
                                        SizedBox(height: Dimensions.height5),
                                        CustomTextField(
                                          prefixIcon: Padding(
                                            padding: EdgeInsets.zero,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                SizedBox(
                                                  width: Dimensions.width15,
                                                ),
                                                Text(
                                                  'Togo (+228)',
                                                  style: TextStyle(
                                                    color: AppColors.grey4,
                                                    fontSize: Dimensions.font18,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: Dimensions.width15,
                                                ),
                                              ],
                                            ),
                                          ),
                                          suffixIcon: Icon(
                                            Icons.cancel_outlined,
                                            color: AppColors.grey4,
                                          ),
                                          maxLines: 1,
                                          keyboardType: TextInputType.number,
                                          // hintText: 'Phone number',
                                        ),
                                        SizedBox(height: Dimensions.height20),
                                        Text(
                                          'Phone',
                                          style: TextStyle(
                                            fontSize: Dimensions.font14,
                                          ),
                                        ),
                                        SizedBox(height: Dimensions.height5),
                                        CustomTextField(
                                          hintText: 'Phone number',
                                        ),
                                        SizedBox(height: Dimensions.height20),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'By signing up you agree to our',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: Dimensions.font16,
                                                ),
                                              ),
                                              SizedBox(width: Dimensions.width5),
                                              Text(
                                                'Terms and Conditions',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: Dimensions.font16,
                                                  color: AppColors.primaryColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: Dimensions.height20),
                                        CustomButton(
                                          text: 'Create account',
                                          onPressed: () {
                                            Get.toNamed(AppRoutes.introductionScreen);
                                          },
                                          backgroundColor: AppColors.white,
                                        ),
                                        SizedBox(height: Dimensions.height50),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            backgroundColor: AppColors.white,
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: Dimensions.font16,
                    ),
                  ),
                  SizedBox(width: Dimensions.width5),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: Dimensions.font16,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



