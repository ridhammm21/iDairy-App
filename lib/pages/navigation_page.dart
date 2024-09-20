import 'package:flutter/material.dart';
import 'package:idairy/pages/cart_page.dart';
import 'package:idairy/pages/home_page.dart';
import 'package:idairy/pages/setting_page.dart';
import 'package:idairy/pages/wallet_page.dart';
import 'package:idairy/utils/global_colors.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {

  int _selectedIndex = 0;

  final List _screens = const [
    HomePage(),
    CartPage(),
    WalletPage(),
    SettingPage(),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavbarItem(Icons.home_outlined,'Home',0),
            buildNavbarItem(Icons.shopping_cart_outlined,'Cart',1),
            buildNavbarItem(Icons.account_balance_wallet_outlined,'Wallet',2),
            buildNavbarItem(Icons.settings_outlined,'Settings',3),
          ],
        ),
      ),
    );
  }

  Widget buildNavbarItem(IconData icon, String label, int index){
    return InkWell(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: _selectedIndex == index ? GlobalColors.tertiary : Colors.black,
          ),
          Text(
            label,
            style: TextStyle(color: _selectedIndex == index ? GlobalColors.tertiary : Colors.black,),
          ),
        ],
      ),
    );
  }
  
}