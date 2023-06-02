import 'package:annapurna225/components/dropdown_widget.dart';
import 'package:annapurna225/widgets/ab_text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/TextBtnWidget.dart';
import '../components/constants.dart';
import '../utils/strings.dart';
import '../widgets/ab_button.dart';
import 'othereDetails.dart';

class houseHoldDetails extends StatefulWidget {
  const houseHoldDetails({Key? key}) : super(key: key);

  @override
  State<houseHoldDetails> createState() => _houseHoldDetailsState();
}

class _houseHoldDetailsState extends State<houseHoldDetails> {
  List data=["select","yes","no"];
  String i="select";
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding, vertical: defaultPadding),
              child: Container(
                height: 40.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text("Basic details (Borrower)",
                            style: myTextStyle100)),
                    TextButton(
                        onPressed: () {},
                        child:
                        Text("Earning member details", style: myTextStyle100)),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Household Details",
                          style: myTextStyle100,
                        )),

                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: defaultPadding, vertical: defaultPadding),
                    child: Container(
                      height: 30.h,
                      decoration: BoxDecoration(
                          color: gray, borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 10.h,
                          ),
                          Text("Members Details",
                              textAlign: TextAlign.start, style: myTextStylebold),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: defaultPadding * 2),
                    child: Container(
                      height: 160.h,
                      color: gray,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: defaultPadding),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: defaultPadding),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Family type",
                                        style: myTextStyle100,
                                        textAlign: TextAlign.start,
                                      ),
                                      Text(
                                        "Nuclear",
                                        style: myTextStyle500,
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Type of Roof",
                                      style: myTextStyle100,
                                    ),
                                    Text(
                                      "Ajbestas",
                                      style: myTextStyle500,
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Type of ownership",
                                      style: myTextStyle100,
                                    ),
                                    Text(
                                      "Own House",
                                      style: myTextStyle500,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: defaultPadding),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: defaultPadding),
                                  child: Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          "No. of Earning Member",
                                          style: myTextStyle100,
                                          textAlign: TextAlign.start,
                                        ),
                                        Text(
                                          "2",
                                          style: myTextStyle500,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        "No. of Non-earning Member",
                                        style: myTextStyle100,
                                      ),
                                      Text(
                                        "2",
                                        style: myTextStyle500,
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        "No. of Unmarried Child",
                                        style: myTextStyle100,
                                      ),
                                      Text(
                                        "1",
                                        style: myTextStyle500,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: defaultPadding),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: defaultPadding),
                                  child: Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          "Total Household "
                                              "Family Members",
                                          style: myTextStyle100,
                                          textAlign: TextAlign.start,
                                        ),
                                        Text(
                                          "5",
                                          style: myTextStyle500,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        "No. of Dependents",
                                        style: myTextStyle100,
                                      ),
                                      Text(
                                        "3",
                                        style: myTextStyle500,
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        "Relationship ",
                                        style: myTextStyle100,
                                      ),
                                      Text(
                                        "Brother",
                                        style: myTextStyle500,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: defaultPadding),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: defaultPadding),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Locality",
                                        style: myTextStyle100,
                                        textAlign: TextAlign.start,
                                      ),
                                      Text(
                                        "Rural",
                                        style: myTextStyle500,
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Religion/Community",
                                      style: myTextStyle100,
                                    ),
                                    Text(
                                      "Hindu",
                                      style: myTextStyle500,
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Caste/Category",
                                      style: myTextStyle100,
                                    ),
                                    Text(
                                      "OBC",
                                      style: myTextStyle500,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),


                          // Row(
                          //   children: [
                          //     Padding(
                          //       padding: const EdgeInsets.symmetric(
                          //           horizontal: defaultPadding,vertical: defaultPadding),
                          //       child: Text(
                          //         "State",
                          //         style: TextStyle(color: Colors.grey),
                          //       ),
                          //     ),
                          //     Padding(
                          //       padding: const EdgeInsets.symmetric(
                          //           horizontal: defaultPadding,vertical: defaultPadding),
                          //       child: Text(
                          //         "District",
                          //         style: TextStyle(color: Colors.grey),
                          //       ),
                          //     ),
                          //     Padding(
                          //       padding: const EdgeInsets.symmetric(
                          //           horizontal: defaultPadding,vertical: defaultPadding),
                          //       child: Text(
                          //         "Pincode",
                          //         style: TextStyle(color: Colors.grey),
                          //       ),
                          //     ),
                          //   ],
                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ExpansionTile(
                title: Text("Update Details",style: TextStyle(color: Colors.green),),
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: defaultPadding, vertical: defaultPadding),
                              child: Container(
                                height: 30.h,
                                decoration: BoxDecoration(
                                    color: gray, borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 10.h,
                                    ),
                                    Text("Members Details",
                                        textAlign: TextAlign.start, style: myTextStylebold),

                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(child: dropdown_widget(
                            name: "Family Type",
                            data: data,
                            value: i,
                            onChanged: (p0) {
                              setState(() {
                                i=p0!;
                              });
                            },
                          )),
                          Expanded(child: dropdown_widget(
                            name: "Type of Roof",
                            data: data,
                            value: i,
                            onChanged: (p0) {
                              setState(() {
                                i=p0!;
                              });
                            },
                          )),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(child: dropdown_widget(
                            name: "Type Of Ownership",
                            data: data,
                            value: i,
                            onChanged: (p0) {
                              setState(() {
                                i=p0!;
                              });
                            },
                          )),
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: "No of Earning members",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter electricity';
                                }
                                return null;
                              },
                              hintText: Strings.enter,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: "No of Non-Earning members",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter electricity';
                                }
                                return null;
                              },
                              hintText: Strings.enter,
                            ),
                          ),
                          Expanded(child: dropdown_widget(
                            name: "No of Unmarried Children",
                            data: data,
                            value: i,
                            onChanged: (p0) {
                              setState(() {
                                i=p0!;
                              });
                            },
                          )),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: "Total Household Family members",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter electricity';
                                }
                                return null;
                              },
                              hintText: Strings.enter,
                            ),
                          ),
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText:"No of Dependents",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter electricity';
                                }
                                return null;
                              },
                              hintText: Strings.enter,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(child: dropdown_widget(
                            name: "Locality",
                            data: data,
                            value: i,
                            onChanged: (p0) {
                              setState(() {
                                i=p0!;
                              });
                            },
                          )),
                          Expanded(child: dropdown_widget(
                            name: "Religion /Community",
                            data: data,
                            value: i,
                            onChanged: (p0) {
                              setState(() {
                                i=p0!;
                              });
                            },
                          )),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(child: Padding(
                            padding: EdgeInsets.only(right: 160.h),
                            child: dropdown_widget(
                              name: "Caste/Category",
                              data: data,
                              value: i,
                              onChanged: (p0) {
                                setState(() {
                                  i=p0!;
                                });
                              },
                            ),
                          )),
                        ],
                      ),
                    ],
                  )
                ],
            ),
            ABButton(
              paddingTop: MediaQuery.of(context).size.height * 0.0225,
              paddingBottom: 15.0,
              paddingLeft: 20.0,
              paddingRight: 20.0,
              text: 'Save & Next',
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => otherDetails(),
                    ));
              },
            )

          ],
        ),
      ),


    );
  }
}
