import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idairy/services/auth/auth_gate.dart';
import 'package:idairy/utils/global_colors.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {Get.to(const AuthGate());} );
    return Scaffold(
      backgroundColor: GlobalColors.primary,
      body: const Center(
        child: Text(
          "iDairy App",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,

          ),
        ),
      ),
    );
  }
}