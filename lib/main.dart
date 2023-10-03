import 'package:animal_search_app/app/modules/home/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          // theme: AppTheme.lightTheme,
          debugShowCheckedModeBanner: false,
          title: 'Pettera',
          // initialRoute: '/',
          // getPages: GetPages.pages,
          home: HomeScreen(),
        );
      },
    );
  }
}
