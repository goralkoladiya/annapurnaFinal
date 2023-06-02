import 'package:annapurna225/utils/roundedImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/TextBtnWidget.dart';
import '../components/constants.dart';
import '../utils/strings.dart';
import '../widgets/ab_button.dart';
import 'houseHoldDetails.dart';

class borrowerDetails extends StatefulWidget {
  const borrowerDetails({Key? key}) : super(key: key);

  @override
  State<borrowerDetails> createState() => _borrowerDetailsState();
}

class _borrowerDetailsState extends State<borrowerDetails> {
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: myRoundedImage("assets/adhaar/image 49.png", context),
                ),
                Column(
                  children: [
                    Text(
                      "Name",
                      style: myTextStyle100,
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      "Sandeep sharma",
                      style: myTextStyle500,
                    ),

                  ],
                ),

              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding * 2),
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
                                    "Date of Birth",
                                    style: myTextStyle100,
                                    textAlign: TextAlign.start,
                                  ),
                                  Text(
                                    "10 Jan 1990",
                                    style: myTextStyle500,
                                  )
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  "Age",
                                  style: myTextStyle100,
                                ),
                                Text(
                                  "32",
                                  style: myTextStyle500,
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "Gender",
                                  style: myTextStyle100,
                                ),
                                Text(
                                  "Male",
                                  style: myTextStyle500,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
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
                                    "Marital Status",
                                    style: myTextStyle100,
                                    textAlign: TextAlign.start,
                                  ),
                                  Text(
                                    "Married",
                                    style: myTextStyle500,
                                  )
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  "Spouse",
                                  style: myTextStyle100,
                                ),
                                Text(
                                  "Lata Kumari",
                                  style: myTextStyle500,
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "Father ",
                                  style: myTextStyle100,
                                ),
                                Text(
                                  "Ranjit Kumar",
                                  style: myTextStyle500,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
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
                                    "POI KYC Type",
                                    style: myTextStyle100,
                                    textAlign: TextAlign.start,
                                  ),
                                  Text(
                                    "Voter ID",
                                    style: myTextStyle500,
                                  )
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  "POI KYC ID",
                                  style: myTextStyle100,
                                ),
                                Text(
                                  "12345678",
                                  style: myTextStyle500,
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "Mobile Number",
                                  style: myTextStyle100,
                                ),
                                Text(
                                  "+91-9897098970",
                                  style: myTextStyle500,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
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
                                    "PAN ID",
                                    style: myTextStyle100,
                                    textAlign: TextAlign.start,
                                  ),
                                  Text(
                                    "23GH48H",
                                    style: myTextStyle500,
                                  )
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  "Applied Amount",
                                  style: myTextStyle100,
                                ),
                                Text(
                                  "90,000",
                                  style: myTextStyle500,
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "Loan Purpose",
                                  style: myTextStyle100,
                                ),
                                Text(
                                  "Farming",
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
                            // mainAxisAlignment:
                            //     MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: defaultPadding),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "KYC Images",
                                          style: myTextStyle100,
                                          textAlign: TextAlign.start,
                                        ),

                                      ],
                                    )),
                                Icon(Icons.photo_album_sharp),
                                InkWell(
                                  child: Text("Click Here"),
                                ),

                              ]))
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
            ],
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
                        Text("Address details",
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
                    height: 170.h,
                    color: gray,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: defaultPadding*2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "State",
                                    style: myTextStyle100,
                                    textAlign: TextAlign.start,
                                  ),
                                  Text(
                                    "Greesingia",
                                    style: myTextStyle500,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "District",
                                    style: myTextStyle100,
                                  ),
                                  Text(
                                    "Udayagiri",
                                    style: myTextStyle500,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Pincode",
                                    style: myTextStyle100,
                                  ),
                                  Text(
                                    "231212",
                                    style: myTextStyle500,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: defaultPadding*2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Present Address",
                                      style: myTextStyle100,
                                      textAlign: TextAlign.start,
                                    ),
                                    Text(
                                      "Village/Locality - Dakarangia G. Pitown-Greesingia P.S. -  G.Udayagiri",
                                      style: myTextStyle500,
                                    )
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: defaultPadding*2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Permanent Address",
                                      style: myTextStyle100,
                                      textAlign: TextAlign.start,
                                    ),
                                    Text(
                                      "Village/Locality - Dakarangia G. Pitown-Greesingia P.S. -  G.Udayagiri",
                                      style: myTextStyle500,
                                    )
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                        // SizedBox(
                        //   height: 10,
                        // ),
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
          ABButton(
            paddingTop: MediaQuery.of(context).size.height * 0.0225,
            paddingBottom: 15.0,
            paddingLeft: 20.0,
            paddingRight: 20.0,
            text: 'Next',
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => houseHoldDetails(),
                  ));
            },
          )

        ],
      ),

    );
  }
}
