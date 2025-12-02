import 'package:flutter/material.dart';
import 'package:pick_app/utils/app_constants.dart';

class JourneyStartedScreen extends StatefulWidget {
  const JourneyStartedScreen({super.key});

  @override
  State<JourneyStartedScreen> createState() => _JourneyStartedScreenState();
}

class _JourneyStartedScreenState extends State<JourneyStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppConstants.getPngAsset('map-mock2')),
        ),
      ),
      child: Scaffold(),
    );
  }
}
