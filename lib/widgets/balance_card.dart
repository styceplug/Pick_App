import 'package:flutter/material.dart';

import '../utils/app_constants.dart';
import '../utils/dimensions.dart';

class BalanceCard extends StatelessWidget {
  String accountName;
  String balance;

   BalanceCard({
    super.key,
    required this.accountName,
    required this.balance,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: Dimensions.screenWidth,
          height: Dimensions.height20 * 10,
          child: Image.asset(AppConstants.getPngAsset('wallet-bg')),
        ),
        Container(
          width: Dimensions.screenWidth,
          height: Dimensions.height20 * 10,
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.width20,
            vertical: Dimensions.height20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Add money',
                        style: TextStyle(
                          fontSize: Dimensions.font22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'More rides, more discounts',
                        style: TextStyle(
                          fontSize: Dimensions.font14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Go Card',
                    style: TextStyle(
                      fontSize: Dimensions.font20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Balance',
                        style: TextStyle(
                          fontSize: Dimensions.font15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '${balance}F',
                        style: TextStyle(
                          fontSize: Dimensions.font20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    accountName,
                    style: TextStyle(
                      fontSize: Dimensions.font14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
