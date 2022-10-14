import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_structure_danu/module/main_navigation/controller/main_navigation_controller.dart';

import '../../cart/view/cart_view.dart';
import '../../home/view/home_view.dart';
import '../../profile/view/profile_view.dart';
import '../../setting/view/setting_view.dart';

class MainNavigationView extends StatelessWidget {
  const MainNavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> bottomNavItem = [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: '',
      ),
    ];

    List<Widget> bottomTabView = <Widget>[
      HomeView(),
      CartView(),
      SettingView(),
      ProfileView(),
    ];

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: context.read<MainNavigationController>().selectedIndex,
        onTap: context.read<MainNavigationController>().onItemTapped,
        items: bottomNavItem,
      ),
      body: Consumer<MainNavigationController>(builder: (_, controller, __) {
        return bottomTabView.elementAt(controller.selectedIndex);
      }),
    );
  }
}
