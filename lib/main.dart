import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pick_app/routes/routes.dart';
import 'package:pick_app/utils/app_constants.dart';
import 'package:pick_app/utils/colors.dart';
import 'helpers/dependencies.dart' as dep;
import 'helpers/global_loader_controller.dart';
import 'helpers/push_notification.dart';
import 'helpers/version_service.dart';
import 'widgets/app_loading_overlay.dart';

@pragma('vm:entry-point')




Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await VersionService.init();
  await dep.init();


  // Always register loader controller
  Get.put(GlobalLoaderController(), permanent: true);

  HardwareKeyboard.instance.clearState();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: 'Inter',
        scaffoldBackgroundColor: AppColors.black,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white),
          titleLarge: TextStyle(color: Colors.white),
          titleMedium: TextStyle(color: Colors.white),
          titleSmall: TextStyle(color: Colors.white),
          labelLarge: TextStyle(color: Colors.white),
          labelMedium: TextStyle(color: Colors.white),
          labelSmall: TextStyle(color: Colors.white),
          headlineLarge: TextStyle(color: Colors.white),
          headlineMedium: TextStyle(color: Colors.white),
          headlineSmall: TextStyle(color: Colors.white),
        ),
      ),

      debugShowCheckedModeBanner: false,
      title: AppConstants.APP_NAME,

      getPages: AppRoutes.routes,
      initialRoute: AppRoutes.splashScreen,
      builder: (context, child) {
        final loaderController =
        Get.find<GlobalLoaderController>();
        return Obx(() {
          return Stack(
            children: [
              child!,
              if (loaderController.isLoading.value)
                const AppLoadingOverlay(),
            ],
          );
        });
      },
    );

  }
}
