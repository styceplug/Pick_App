import 'package:flutter/material.dart';
import 'package:pick_app/utils/app_constants.dart';
import 'package:pick_app/utils/colors.dart';
import 'package:pick_app/utils/dimensions.dart';
import 'package:pick_app/widgets/balance_card.dart';
import 'package:pick_app/widgets/custom_button.dart';
import 'package:pick_app/widgets/custom_textfield.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  bool selectedMethod = false;

  void selectMethod() {
    setState(() {
      selectedMethod = !selectedMethod;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.white),
        backgroundColor: AppColors.black,
      ),
      body: SafeArea(
        bottom: false,
        child: Container(
          padding: EdgeInsets.fromLTRB(0, Dimensions.height20, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.width30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BalanceCard(
                      accountName: 'Account Name',
                      balance: '35,000.00',
                    ),
                    SizedBox(height: Dimensions.height20),
                    Text(
                      'Enter amount to add',
                      style: TextStyle(
                        fontSize: Dimensions.font20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: Dimensions.height20),
                    CustomTextField(hintText: '0.00F'),
                  ],
                ),
              ),

              SizedBox(height: Dimensions.height20),
              Spacer(),
              Container(
                height: Dimensions.height20 * 15,
                width: Dimensions.screenWidth,
                padding: EdgeInsets.fromLTRB(
                  Dimensions.width20,
                  Dimensions.height20,
                  Dimensions.width20,
                  Dimensions.height30,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: AppColors.cardColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Select Payment Method',
                      style: TextStyle(
                        fontSize: Dimensions.font20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: Dimensions.height20),
                    Row(
                      children: [
                        Image.asset(
                          AppConstants.getPngAsset('moov-money'),
                          height: Dimensions.height30,
                        ),
                        SizedBox(width: Dimensions.width10),
                        Text(
                          'Moov Money Flooz',
                          style: TextStyle(
                            fontSize: Dimensions.font17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: selectMethod,
                          child: Icon(
                            selectedMethod
                                ? Icons.check_box
                                : Icons.check_box_outline_blank,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Dimensions.height15),
                    Row(
                      children: [
                        Image.asset(
                          AppConstants.getPngAsset('yas-mix'),
                          height: Dimensions.height30,
                        ),
                        SizedBox(width: Dimensions.width10),
                        Text(
                          'Yas Mixx',
                          style: TextStyle(
                            fontSize: Dimensions.font17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Dimensions.height15),
                    Row(
                      children: [
                        Image.asset(
                          AppConstants.getPngAsset('credit_card'),
                          height: Dimensions.height30,
                        ),
                        SizedBox(width: Dimensions.width10),
                        Text(
                          'Credit Card',
                          style: TextStyle(
                            fontSize: Dimensions.font17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    CustomButton(
                      text: 'Add funds',
                      onPressed: () {},
                      borderRadius: BorderRadius.circular(Dimensions.radius30),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
