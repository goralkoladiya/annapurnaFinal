import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../AppImages.dart';
import '../components/TextBtnWidget.dart';
import '../components/constants.dart';
import '../widgets/ab_button.dart';
import '../widgets/ab_text_input.dart';

class cb_daviation extends StatefulWidget {
  @override
  State<cb_daviation> createState() => _cb_daviationState();
}

class _cb_daviationState extends State<cb_daviation> {
  final _enterdetailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isObscure = true;
  bool _checkbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        title: Text(
          "CB Deviation data",
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: black),
        ),
        actions: [
          // SizedBox(width: 10),
          IconButton(
              color: black,
              onPressed: () {},
              icon: ImageIcon(AssetImage("assets/dasboardimg/Group 148.png"))),

          PopupMenuButton(
            icon: ImageIcon(
              AssetImage("assets/dasboardimg/Group 149.png"),
              color: Colors.black,
            ),
            onSelected: (value) {
              switch (value) {
                case 1:
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePassword(),));
                  break;
                case 2:
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Logout(),));
                  break;
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                  value: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Change Password",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 15,
                      )
                    ],
                  )),
              const PopupMenuItem(
                  value: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Logout",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 15,
                      )
                    ],
                  )),
            ],
          ),

          PopupMenuButton(
            icon: ImageIcon(AssetImage("assets/dasboardimg/Group 150.png"),
                color: Colors.black),
            onSelected: (value) {
              switch (value) {
                case 1:
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: SizedBox(
                          height: 38.h,
                          width: 90.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Contact Us",
                                style: myTextstye,
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: grey),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                            "assets/dasboardimg/call 1.png"),
                                        Text("Support No"),
                                        Text("+91 8712459603"),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              TextBtnWidget(
                                name: "Close",
                                btnColor: white,
                                borderColor: kPrimaryColor,
                                onTap: () {},
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                  break;
                case 2:
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Logout(),));
                  break;
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                  value: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Contact Us",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 15,
                      )
                    ],
                  )),
              const PopupMenuItem(
                  value: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "FAQs",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 15,
                      )
                    ],
                  )),
              const PopupMenuItem(
                  value: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Videos",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 15,
                      )
                    ],
                  )),
            ],
            offset: Offset(0.0, AppBar().preferredSize.height + 5),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
              ),
            ),
          ),

          Center(
            child: Text(
              "Vivek s.",
              style: myTextstye1.copyWith(fontSize: 14),
            ),
          ),
          IconButton(
              color: black,
              onPressed: () {},
              icon: const Icon(
                Icons.keyboard_arrow_down_rounded,
                size: 15,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.blueGrey,
          child: Column(children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: white,
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: ABTextInput(
                          autoValidator: AutovalidateMode.onUserInteraction,
                          titleText: 'Enter Details',
                          hintText: 'Enter Details',
                        ),
                      ),
                      Expanded(
                        child: ABTextInput(
                          autoValidator: AutovalidateMode.onUserInteraction,
                          titleText: 'Enter Details',
                          validator: (value) {
                            // if (value == null || value.isEmpty) {
                            //   return 'Enter Details';
                            // }return null;
                          },
                          controller: _enterdetailController,
                          hintText: 'Enter Details',
                        ),
                      ),
                    ],
                  ),
                  ABButton(
                    paddingTop: MediaQuery.of(context).size.height * 0.0225,
                    paddingBottom: 15.0,
                    paddingLeft: 70.0,
                    paddingRight: 70.0,
                    text: 'Search',
                    onPressed: () {
                      // ref.watch(authenticationProvider).loginAPI(
                      //   context: context,
                      //   userName: _userNameController.text,
                      //   password: _passwordController.text,
                      // );
                      // Navigator.pushReplacement(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => const CommonWebView(url: 'https://abhayahospital.in/main/landing/1'),
                      //     ));
                    },
                  ),
                  Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(left: defaultPadding),
                      child: Text(
                        "All CB Data",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(defaultPadding),
                    child: Container(
                      height: 170,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadiusDirectional.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade600,
                                blurRadius: 7,
                                spreadRadius: 1)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(defaultPadding),
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Client Name", style: myTextStylegrey),
                              Text("Voter ID", style: myTextStylegrey),
                              Text("CB Status", style: myTextStylegrey)
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child:
                                    Text("Jai Prakash", style: myTextStyle600),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 95.0),
                                child: Text("123456", style: myTextStyle600),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 100.0),
                                child: Text("Active", style: myTextStyle600),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text("Rejection Reason", style: myTextStylegrey),
                              Padding(
                                padding: const EdgeInsets.only(left: 70.0),
                                child: Text("Status", style: myTextStylegrey),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Lorem Ipsum is dummy text",
                                  style: myTextStyle600),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text("Reject", style: myTextStyle600),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Row(children: [
                                  Icon(
                                    Icons.remove_red_eye_rounded,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text("View CB Report",
                                        style: myTextStyleblue),
                                  )
                                ]),
                              ),
                              Expanded(
                                child: ABButton(
                                    paddingTop:0,
                                    paddingBottom: 0.0,
                                    paddingLeft: 0.0,
                                    paddingRight: 0.0,
                                    text: 'Raise Request',
                                    size: 12,
                                    onPressed: () {}),
                              ),
                              Expanded(
                                child: ABButton(
                                    size: 12,
                                    paddingTop:0,
                                    paddingBottom: 0.0,
                                    paddingLeft: 0.0,
                                    paddingRight: 0.0,
                                    text: 'Reject',
                                    onPressed: () {}),
                              )
                            ],
                          )
                        ]),
                      ),
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
