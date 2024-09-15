// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:idairy/pages/setting_page.dart';
import 'package:idairy/services/auth/auth_service.dart';
import 'package:idairy/utils/global_colors.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout() {
    final auth = AuthService();
    auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: GlobalColors.primary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //logo
              DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.local_drink_outlined,
                    size: 40,
                    color: GlobalColors.textColor,
                  ),
                ),
              ),
              
              //home
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text("H O M E",style: TextStyle(color: GlobalColors.textColor),),
                  leading: Icon(Icons.home, color: GlobalColors.textColor),
                  onTap: () {
                    //pop drawer
                    Navigator.pop(context);
                  },
                ),
              ),
              
              //setting
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text("S E T T I N G",style: TextStyle(color: GlobalColors.textColor),),
                  leading: Icon(Icons.settings, color: GlobalColors.textColor),
                  onTap: () {
                    //pop drawer
                    Navigator.pop(context);
                    //go to setting
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SettingPage(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),

          //logout
          Padding(
            padding: const EdgeInsets.only(left: 25.0, bottom: 25),
            child: ListTile(
              title: Text("L O G O U T",style: TextStyle(color: GlobalColors.textColor),),
              leading: Icon(Icons.logout, color: GlobalColors.textColor),
              onTap: logout,
            ),
          ),
        
        ],
      ),
    );
  }
}