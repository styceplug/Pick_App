import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_constants.dart';
import '../utils/colors.dart';
import '../utils/dimensions.dart';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';


import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color? imageColor;
  final Color? chatTextColor;
  final Color? chatContainerColor;
  final VoidCallback? onChatTap;

  const CustomAppBar({
    Key? key,
    this.imageColor,
    this.chatTextColor,
    this.chatContainerColor,
    this.onChatTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Define defaults here for cleaner code usage below
    final Color? effectiveImageColor = imageColor;
    final Color effectiveChatTextColor = chatTextColor ?? Colors.white;
    final Color effectiveContainerColor = chatContainerColor ?? Colors.black;

    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top + Dimensions.height10,
        left: Dimensions.width20,
        right: Dimensions.width20,
        bottom: Dimensions.height10,
      ),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Row(
        children: [
          // Side Icon - Triggers the Drawer
          GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Image.asset(
              AppConstants.getPngAsset('side-icon'),
              height: Dimensions.height30,
              color: effectiveImageColor,
            ),
          ),
          SizedBox(width: Dimensions.width20),

          // App Logo
          Image.asset(
            AppConstants.getPngAsset('pick-app'),
            height: Dimensions.height20,
            color: effectiveImageColor,
          ),

          const Spacer(),

          // Chat Container
          GestureDetector(
            onTap: onChatTap,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.width15,
                vertical: Dimensions.height5,
              ),
              decoration: BoxDecoration(
                color: effectiveContainerColor,
                borderRadius: BorderRadius.circular(Dimensions.radius20),
              ),
              child: Text(
                'Chat',
                style: TextStyle(
                  fontSize: Dimensions.font20, // Adjusted to match previous context
                  fontWeight: FontWeight.w500,
                  color: effectiveChatTextColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(Dimensions.height65 + 40);
}