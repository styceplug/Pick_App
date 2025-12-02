import 'dart:math';
import 'package:get/get.dart';
import 'package:pick_app/screens/main_screens/car_reserved.dart';
import 'package:pick_app/screens/main_screens/car_unlocked.dart';
import 'package:pick_app/screens/main_screens/duration_screen.dart';
import 'package:pick_app/screens/main_screens/end_trip.dart';
import 'package:pick_app/screens/main_screens/home_screen.dart';
import 'package:pick_app/screens/main_screens/journey_completed.dart';
import 'package:pick_app/screens/main_screens/journey_started.dart';
import 'package:pick_app/screens/main_screens/map_screen.dart';
import 'package:pick_app/screens/splash_screens/introduction_screen.dart';

import '../screens/splash_screens/no_internet_screen.dart';
import '../screens/splash_screens/onboarding_screen.dart';
import '../screens/splash_screens/splash_screen.dart';
import '../screens/splash_screens/update_app_screen.dart';

class AppRoutes{
  static const String splashScreen = '/splash-screen';
  static const String onboardingScreen = '/onboarding-screen';
  static const String updateAppScreen = '/update-app-screen';
  static const String noInternetScreen = '/no-internet-screen';
  static const String introductionScreen = '/introduction-screen';

  //in-app
  static const String homeScreen = '/home-screen';
  static const String durationScreen = '/duration-screen';
  static const String mapScreen = '/map-screen';
  static const String carReservedScreen = '/car-reserved-screen';
  static const String carUnlockedScreen = '/car-unlocked-screen';
  static const String endTripScreen = '/end-trip-screen';
  static const String journeyCompletedScreen = '/journey-completed-screen';
  static const String journeyStartedScreen = '/journey-started-screen';





static final routes = [
  GetPage(
    name: splashScreen,
    page: () {
      return const SplashScreen();
    },
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: onboardingScreen,
    page: () {
      return  OnboardingScreen();
    },
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: updateAppScreen,
    page: () {
      return const UpdateAppScreen();
    },
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: noInternetScreen,
    page: () {
      return const NoInternetScreen();
    },
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: introductionScreen,
    page: () {
      return const IntroductionScreen();
    },
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: homeScreen,
    page: () {
      return  HomeScreen();
    },
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: durationScreen,
    page: () {
      return  DurationScreen();
    },
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: mapScreen,
    page: () {
      return MapScreen();
    },
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: carReservedScreen,
    page: () {
      return CarReservedScreen();
    },
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: carUnlockedScreen,
    page: () {
      return CarUnlockedScreen();
    },
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: endTripScreen,
    page: () {
      return EndTripScreen();
    },
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: journeyCompletedScreen,
    page: () {
      return JourneyCompletedScreen();
    },
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: journeyStartedScreen,
    page: () {
      return JourneyStartedScreen();
    },
    transition: Transition.fadeIn,
  ),




];
}