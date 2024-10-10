import 'package:flutter/material.dart';

import 'package:idairy/pages/admin/screens/view_product.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:index == 0 ? const ViewProduct() : Container() ,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: const [
        BottomNavigationBarItem(
          label: 'Home',

          icon: Icon(Icons.pages)
        ),
         BottomNavigationBarItem(
          label: 'insights',
          icon: Icon(Icons.insights)
        ),
      ]),

    );
  }
}