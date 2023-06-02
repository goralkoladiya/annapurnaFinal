import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/TextBtnWidget.dart';
import '../components/constants.dart';
import '../components/dropdown_widget.dart';
import '../widgets/ab_button.dart';
import 'borrowerDetails.dart';

class clientList extends StatefulWidget {
  const clientList({Key? key}) : super(key: key);

  @override
  State<clientList> createState() => _clientListState();
}

class _clientListState extends State<clientList> {
  List data = ["village 1", "Freelancing", "Job", "Work"];
  String i = "village 1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        title: Text(
          "Verify Client Details",
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: dropdown_widget(
                    value: i,
                    name: "select village",
                    onChanged: (p0) {
                      setState(() {
                        i = p0!;
                      });
                    },
                    data: data,
                  ),
                ),
                Expanded(
                  child: dropdown_widget(
                    value: i,
                    name: "Select Center",
                    onChanged: (p0) {
                      setState(() {
                        i = p0!;
                      });
                    },
                    data: data,
                  ),
                ),
                Expanded(
                  child: dropdown_widget(
                    value: i,
                    name: "FCO Name",
                    onChanged: (p0) {
                      setState(() {
                        i = p0!;
                      });
                    },
                    data: data,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: OutlinedButton(style: OutlinedButton.styleFrom(side:BorderSide(color: kPrimaryColor
                  )),onPressed: () {}, child: Text("reset",style: TextStyle(color: kPrimaryColor),)),
                ),
                SizedBox(width: 10.w,),
                Expanded(

                  child: ABButton(
                    paddingTop: MediaQuery.of(context).size.height * 0.0225,
                    paddingBottom: 15.0,
                    paddingLeft: 0.0,
                    paddingRight: 10.0,
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
                      //       builder: (context) => DashboardPage(),
                      //     ));
                    },
                  ),
                )
              ],
            ),
          ),
          Text(
            "Total Searched (23)",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 40.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Application Name",style: TextStyle(color: Colors.grey),),
                              SizedBox(height: 7.h,),
                              Text("Jai Prakash"),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text( "Spouse",style: TextStyle(color: Colors.grey),),
                              SizedBox(height: 7.h,),
                              Text("Meena"),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text("Voter Id",
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(height: 7.h,),
                              Text("4567899"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Proposal Date",style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(height: 7.h,),
                              Text("Jai Prakash"),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text( "Spouse",style: TextStyle(color: Colors.grey),),
                              SizedBox(height: 7.h,),
                              Text("Meena"),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text("Voter Id",
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(height: 7.h,),
                              Text("4567899"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Row(
                    children: [

                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("01 Jan 2022"),
                      ),
                      Spacer(),
                      Icon(Icons.remove_red_eye),
                      InkWell(
                          child: Text("View Details"),
                          onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => borrowerDetails()),
                              )),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
