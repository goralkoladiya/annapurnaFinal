import 'package:annapurna225/components/TextBtnWidget.dart';
import 'package:annapurna225/components/constants.dart';
import 'package:annapurna225/components/dropdown_widget.dart';
import 'package:annapurna225/utils/strings.dart';
import 'package:annapurna225/utils/theme_config.dart';
import 'package:annapurna225/widgets/ab_text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'appraisalForm3.dart';

class AppraisalForm2 extends StatefulWidget {
  const AppraisalForm2({Key? key}) : super(key: key);

  @override
  State<AppraisalForm2> createState() => _AppraisalForm2State();
}

class _AppraisalForm2State extends State<AppraisalForm2> {
  TextEditingController villageController=TextEditingController();
  TextEditingController centerController=TextEditingController();
  TextEditingController groupNameController=TextEditingController();
  TextEditingController loanAppliedController=TextEditingController();
  TextEditingController loanRecommendedController=TextEditingController();
  TextEditingController loanAmountApprovedController=TextEditingController();
  TextEditingController appraisalRemarkController=TextEditingController();

  List data=["Select","Yes","No"];
  String i="Select";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        actions: [
          Builder(builder: (context) =>
              Expanded(
                child: IconButton(
                  color: black,
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: ImageIcon(AssetImage("assets/dasboardimg/Hamburger.png")),
                ),
              ),
          ),
          Expanded(flex: 2,
            child: Image.asset(
              "assets/dasboardimg/image 3.png",
              width: 90,
            ),
          ),
          SizedBox(width: 40),
          Expanded(
            child: IconButton(
                color: black,
                onPressed: () {},
                icon: ImageIcon(AssetImage("assets/dasboardimg/Group 148.png"))),
          ),
          Expanded(
            child: PopupMenuButton(
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
          ),
          Expanded(
            child: PopupMenuButton(
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
                            height: 36.h,
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
                                    Expanded(
                                      child: Container(
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
                                            SizedBox(
                                              height: 1.h,
                                            ),
                                            Text(
                                              "Support No",
                                              style: myTextStyle600a.copyWith(
                                                  color: grey),
                                            ),
                                            SizedBox(
                                              height: 1.h,
                                            ),
                                            Text(
                                              "+91 8712459603",
                                              style: myTextStyle600a,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 1.h,
                                    ),
                                    Expanded(
                                      child: Container(
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
                                                "assets/dasboardimg/mail.png"),
                                            SizedBox(
                                              height: 1.h,
                                            ),
                                            Text(
                                              "Email Address",
                                              style: myTextStyle600a.copyWith(
                                                  color: grey),
                                            ),
                                            SizedBox(
                                              height: 1.h,
                                            ),
                                            Text(
                                              "support@annapurna.com",
                                              style: myTextStyle600a,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                TextBtnWidget(
                                  name: "Close",
                                  btnColor: white,
                                  borderColor: kPrimaryColor,
                                  textColor: kPrimaryColor,
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
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
          ),
          Expanded(flex: 2,
            child: Center(
              child: Text(
                "Vivek s.",
                style: myTextstye1.copyWith(fontSize: 14),
              ),
            ),
          ),
          Expanded(
            child: IconButton(
                color: black,
                onPressed: () {},
                icon: const Icon(
                  Icons.keyboard_arrow_down_rounded,
                  size: 15,
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 18.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text("Member Name",style: myTextStyle100,textAlign: TextAlign.start,),
                      Text("Ravikanth",style: myTextStyle500,)
                    ],
                  ),
                  Column(
                    children: [
                      Text("Household Income",style: myTextStyle100,),
                      Text("10,000",style: myTextStyle500,)
                    ],
                  ),
                  Column(
                    children: [
                      Text("No. of Earning Member",style: myTextStyle100,),
                      Text("2",style: myTextStyle500,)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 12.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text("Household EMI",style: myTextStyle100,textAlign: TextAlign.start,),
                      Text("3000",style: myTextStyle500,)
                    ],
                  ),
                  Column(
                    children: [
                      Text("Household Expenditure",style: myTextStyle100,),
                      Text("4,000",style: myTextStyle500,)
                    ],
                  ),
                  Column(
                    children: [
                      Text("Loan Eligibility",style: myTextStyle100,),
                      Text("29,000",style: myTextStyle500,)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 12.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text("ROI",style: myTextStyle100,textAlign: TextAlign.start,),
                      Text("11.5%",style: myTextStyle500,)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text("Appraisal Date",style: myTextStyle100,textAlign: TextAlign.start,),
                      Text("10 Aug 2022",style: myTextStyle500,)
                    ],
                  ),
                  Column(
                    children: [
                      Text("Name of AO",style: myTextStyle100,),
                      Text("Rakesh Verma",style: myTextStyle500,)
                    ],
                  ),
                  Column(
                    children: [
                      Text("ID of AO",style: myTextStyle100,),
                      Text("12345678",style: myTextStyle500,)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 18.h,),
            Row(
              children: [
                Expanded(child: ABTextInput(
                  controller: villageController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: Strings.village,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter name';
                    }return null;
                  },
                  hintText: "Search",
                ),),
                Expanded(child: ABTextInput(
                  controller: centerController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: Strings.center,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter name';
                    }return null;
                  },
                  hintText: "Search",
                ),),
              ],
            ),
            Row(
              children: [
                Expanded(child: ABTextInput(
                  controller: groupNameController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: Strings.groupName,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter name';
                    }return null;
                  },
                  hintText: "Search",
                ),),
                Expanded(child: ABTextInput(
                  controller: loanAppliedController,
                  suffix: Icon(Icons.edit,color: kPrimaryColor),
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: Strings.loanApplied,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter amount';
                    }return null;
                  },
                  hintText: "30,000",
                ),),
              ],
            ),
            Row(
              children: [
                Expanded(child: ABTextInput(
                  controller: loanRecommendedController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: Strings.loanRecommended,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter amount';
                    }return null;
                  },
                  hintText: "28,000",
                ),),
                Expanded(
                  child: dropdown_widget(
                    value: i,
                    name: Strings.loanStatus,
                    onChanged: (p0) {
                      setState(() {
                        i=p0!;
                      });
                    },
                    data: data,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(child: ABTextInput(
                  controller: loanAmountApprovedController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: Strings.totalLoanAmountApprovedByAo,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter amount';
                    }return null;
                  },
                  hintText: "0",
                ),),
                Expanded(
                  child: dropdown_widget(
                    value: i,
                    name: "Tenure",
                    onChanged: (p0) {
                      setState(() {
                        i=p0!;
                      });
                    },
                    data: data,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(child: ABTextInput(
                  controller: appraisalRemarkController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: Strings.appraisalRemark,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter remark';
                    }return null;
                  },
                  hintText: "Enter Remarks",
                ),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding),
              child: ExpansionTile(
                iconColor: kPrimaryColor,
                collapsedIconColor: kPrimaryColor,
                backgroundColor: ThemeColor.expansioncolor,
                textColor: Colors.black,
                collapsedBackgroundColor: ThemeColor.expansioncolor,
                collapsedShape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))),
                title: Row(
                  children: [
                    Icon(Icons.add_circle_outline,color: kPrimaryColor,),
                    SizedBox(width: 5.h,),
                    Text("Add PPI Questions",style: myTextStylebold,)
                  ],
                ),
                children: [
                  Container(
                    color : Colors.white,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: dropdown_widget(
                                value: i,
                                name: "Select a member",
                                onChanged: (p0) {
                                  setState(() {
                                    i=p0!;
                                  });
                                },
                                data: data,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: dropdown_widget(
                                value: i,
                                name: "How many members are there in the household ?",
                                onChanged: (p0) {
                                  setState(() {
                                    i=p0!;
                                  });
                                },
                                data: data,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: dropdown_widget(
                                value: i,
                                name: "What is the general education level of the female head spouse ?",
                                onChanged: (p0) {
                                  setState(() {
                                    i=p0!;
                                  });
                                },
                                data: data,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: dropdown_widget(
                                value: i,
                                name: "Does the household possess a refrigerator ?",
                                onChanged: (p0) {
                                  setState(() {
                                    i=p0!;
                                  });
                                },
                                data: data,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: dropdown_widget(
                                value: i,
                                name: "Does the household possess stove/gas burner ?",
                                onChanged: (p0) {
                                  setState(() {
                                    i=p0!;
                                  });
                                },
                                data: data,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: dropdown_widget(
                                value: i,
                                name: "Does the household possess a pressure cooker/pressure pan ?",
                                onChanged: (p0) {
                                  setState(() {
                                    i=p0!;
                                  });
                                },
                                data: data,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: dropdown_widget(
                                value: i,
                                name: "Does the household possess a television ?",
                                onChanged: (p0) {
                                  setState(() {
                                    i=p0!;
                                  });
                                },
                                data: data,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: dropdown_widget(
                                value: i,
                                name: "Does the household possess an electric fan ?",
                                onChanged: (p0) {
                                  setState(() {
                                    i=p0!;
                                  });
                                },
                                data: data,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: dropdown_widget(
                                value: i,
                                name: "Does the household possess an almirah/dressing table ?",
                                onChanged: (p0) {
                                  setState(() {
                                    i=p0!;
                                  });
                                },
                                data: data,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: dropdown_widget(
                                value: i,
                                name: "Does the household possess a chair, stool, bench or table ?",
                                onChanged: (p0) {
                                  setState(() {
                                    i=p0!;
                                  });
                                },
                                data: data,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: dropdown_widget(
                                value: i,
                                name: "Does the household possess a motorcycle, scooter, motor car or jeep ?",
                                onChanged: (p0) {
                                  setState(() {
                                    i=p0!;
                                  });
                                },
                                data: data,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding),
                    child: Container(
                      height: 40.h,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: kPrimaryColor
                          ),
                          onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => AppraisalForm3(),));
                          }, child: Text("Save")),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
