import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/res/app_theme.dart';
import 'package:joy_box_app/view/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      builder: (context, child) => MaterialApp(
        initialRoute: RoutePaths.splash,
        routes: appRoutes,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: appTheme,
        // routerConfig: _router,
      ),
    );
  }
}
