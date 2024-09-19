import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:idairy/components/my_drawer.dart';
import 'package:idairy/utils/global_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 77),
          child: Text("Home"),
        ),
        backgroundColor: GlobalColors.primary,
        foregroundColor: GlobalColors.textColor,
        elevation: 0,
      ),
      drawer: const MyDrawer(),
    );
  }
}
