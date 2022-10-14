import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider_structure_danu/module/profile/controller/profile_controller.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    ProfileController controller = ProfileController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile View'),
      ),
      body: Center(
        child: Lottie.asset('asset/lottie/profile.json', height: 300),
      ),
    );
  }
}
