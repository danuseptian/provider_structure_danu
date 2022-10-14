import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../controller/setting_controller.dart';

class SettingView extends StatelessWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    SettingController controller = SettingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Setting View'),
      ),
      body: Center(
        child: Lottie.asset('asset/lottie/setting.json', height: 300),
      ),
    );
  }
}
