import 'package:flutter/material.dart';
import 'package:idairy/components/my_drawer.dart';
import 'package:idairy/utils/global_colors.dart';
import 'package:idairy/widget/widget_support.dart';


class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {

  TextEditingController amountcontroller = new TextEditingController();

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left : 77),
          child: Text("Wallet"),
        ),
        backgroundColor: GlobalColors.primary,
        foregroundColor: GlobalColors.textColor,
        elevation: 0,
      ),
      body : Container(
              margin: EdgeInsets.only(top: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Material(
                  //     elevation: 2.0,
                  //     child: Container(
                  //         padding: EdgeInsets.only(bottom: 10.0),
                  //         child: Center(
                  //             child: Text(
                  //           "Wallet",
                  //           style: AppWidget.HeadlineTextFeildStyle(),
                  //         )))),
                  // SizedBox(
                  //   height: 30.0,
                  // ), 
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Color(0xFFF2F2F2)),
                    child: Row(
                      children: [
                        Image.asset(
                          "images/wallet.png",
                          height: 60,
                          width: 60,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          width: 40.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Your Wallet",
                              style: AppWidget.LightTextFeildStyle(),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              // "\$" + wallet!,
                              "\$" + "amount displayed",
                              style: AppWidget.boldTextFeildStyle(),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Add money",
                      style: AppWidget.semiBoldTextFeildStyle(),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          makePayment('100');
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFFE9E2E2)),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "\$" + "100",
                            style: AppWidget.semiBoldTextFeildStyle(),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          makePayment('500');
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFFE9E2E2)),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "\$" + "500",
                            style: AppWidget.semiBoldTextFeildStyle(),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          makePayment('1000');
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFFE9E2E2)),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "\$" + "1000",
                            style: AppWidget.semiBoldTextFeildStyle(),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          makePayment('2000');
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFFE9E2E2)),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "\$" + "2000",
                            style: AppWidget.semiBoldTextFeildStyle(),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  GestureDetector(
                    onTap: (){
                      openEdit();
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: GlobalColors.primary,
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          "Add Money",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
      drawer: MyDrawer(),
    );
  }

  Future<void> makePayment(String amount) async {
    
  }

  Future openEdit() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            content: SingleChildScrollView(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.cancel)),
                        SizedBox(
                          width: 60.0,
                        ),
                        Center(
                          child: Text(
                            "Add Money",
                            style: TextStyle(
                              color: GlobalColors.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text("Amount"),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black38, width: 2.0),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                        controller: amountcontroller,
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'Enter Amount'),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                          makePayment(amountcontroller.text);
                        },
                        child: Container(
                          width: 100,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: GlobalColors.primary,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Text(
                            "Pay",
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
      ));
}