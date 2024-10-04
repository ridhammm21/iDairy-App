// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:idairy/components/my_drawer.dart';
import 'package:idairy/pages/order_page.dart';
import 'package:idairy/pages/profile_page.dart';
import 'package:idairy/services/auth/auth_service.dart';
import 'package:idairy/utils/global_colors.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  void logout() {
    final auth = AuthService();
    auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left : 77),
          child: Text("Setting"),
        ),
        backgroundColor: GlobalColors.primary,
        foregroundColor: GlobalColors.textColor,
        elevation: 0,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [

                SizedBox(
                  height: 30.0,
                ),
                
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfilePage(),
                        ),
                      );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      elevation: 2.0,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 15.0,
                          horizontal: 10.0,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: GlobalColors.primary,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Profile",
                                  style: TextStyle(
                                      color: GlobalColors.primary,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            )
                          ], 
                        ),
                      ),
                    ),
                  ),
                ),
                
                SizedBox(
                  height: 30.0,
                ),
                
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderPage(),
                        ),
                      );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      elevation: 2.0,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 15.0,
                          horizontal: 10.0,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.shopping_bag,
                              color: GlobalColors.primary,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Order History",
                                  style: TextStyle(
                                      color: GlobalColors.primary,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                //profile
                // Padding(
                //   padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
                //   child: ListTile(
                //     tileColor: GlobalColors.tertiary,
                //     title: Text("Profile"),
                //     leading: Icon(Icons.person),
                //     trailing: Icon(Icons.arrow_forward),
                //     onTap: () {
                //       //go to profile
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //           builder: (context) => ProfilePage(),
                //         ),
                //       );
                //     },
                //   ),
                // ),

                //orders history 
                // Padding(
                //   padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
                //   child: ListTile(
                //     tileColor: GlobalColors.tertiary,
                //     title: Text("Orders"),
                //     leading: Icon(Icons.shopping_cart),
                //     trailing: Icon(Icons.arrow_forward),
                //     onTap: () {
                //       //go to profile
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //           builder: (context) => OrderPage(),
                //         ),
                //       );
                //     },
                //   ),
                // ),

                SizedBox(
                  height: 300.0,
                ),
                

                GestureDetector(
                  onTap: logout,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      elevation: 2.0,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 15.0,
                          horizontal: 10.0,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.logout,
                              color: GlobalColors.inversePrimary,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "LogOut",
                                  style: TextStyle(
                                      color: GlobalColors.inversePrimary,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
            

            //logout
            // Padding(
            //   padding: const EdgeInsets.only(top: 30,left: 100,right: 100,bottom: 30),
            //   child: ListTile(
            //     tileColor: GlobalColors.inversePrimary,
            //     title: Text(
            //       "Logout",
            //       style: TextStyle(color: Colors.white),
            //       ),
            //     leading: Icon(Icons.logout,color: Colors.white),
            //     onTap: logout,
            //   ),
            // ),

            

          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}