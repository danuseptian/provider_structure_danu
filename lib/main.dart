import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'module/cart/controller/cart_controller.dart';
import 'module/home/controller/home_controller.dart';
import 'module/main_navigation/controller/main_navigation_controller.dart';
import 'module/main_navigation/view/main_navigation_view.dart';
import 'module/profile/controller/profile_controller.dart';
import 'module/setting/controller/setting_controller.dart';
import 'util/theme.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MainNavigationController()),
        ChangeNotifierProvider(create: (_) => CartController()),
        ChangeNotifierProvider(create: (_) => HomeController()),
        ChangeNotifierProvider(create: (_) => SettingController()),
        ChangeNotifierProvider(create: (_) => ProfileController()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: defaultTheme,
      home: MainNavigationView(),
    );
  }
}
