import 'package:flutter/material.dart';
import 'package:idairy/utils/global_colors.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order History"),
        backgroundColor: GlobalColors.primary,
        foregroundColor: GlobalColors.textColor,
      ),
    );
  }
}