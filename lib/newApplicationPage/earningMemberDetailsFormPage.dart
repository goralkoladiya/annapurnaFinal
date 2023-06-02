import 'package:annapurna225/components/TextBtnWidget.dart';
import 'package:annapurna225/components/constants.dart';
import 'package:annapurna225/components/dropdown_widget.dart';
import 'package:annapurna225/newApplicationPage/householdDetailsPage.dart';
import 'package:annapurna225/utils/strings.dart';
import 'package:annapurna225/widgets/ab_text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EarningMemberDetailsFormPage extends StatefulWidget {
  const EarningMemberDetailsFormPage({Key? key}) : super(key: key);

  @override
  State<EarningMemberDetailsFormPage> createState() => _EarningMemberDetailsFormPageState();
}

class _EarningMemberDetailsFormPageState extends State<EarningMemberDetailsFormPage> {
  TextEditingController nonEarningMemberController=TextEditingController();
  TextEditingController tHouseFamilyMembersController=TextEditingController();
  TextEditingController unmarriedMembersController=TextEditingController();
  TextEditingController dependentsController=TextEditingController();
  List data=["Nuclear","Education","Freelancing","Job","Work"];
  String i="Nuclear";
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding,horizontal: defaultPadding),
            child: Container(
              height: 40.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  TextButton(onPressed: () {

                  }, child: Text("Basic details (Borrower)",style: myTextStyle100)),
                  TextButton(onPressed: () {

                  }, child: Text("Earning member details",style: myTextStyle100)),
                  TextButton(onPressed: () {

                  }, child: Text("Household details",style: myTextStyle100,))
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: dropdown_widget(
                  value: i,
                  name: Strings.familyType,
                  onChanged: (p0) {
                    setState(() {
                      i=p0!;
                    });
                  },
                  data: data,
                ),
              ),
              Expanded(child: ABTextInput(
                controller: nonEarningMemberController,
                autoValidator: AutovalidateMode.onUserInteraction,
                titleText: Strings.nonEarningMember,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter members';
                  }return null;
                },
                hintText: "1",
              ),),
            ],
          ),
          Row(
            children: [
              Expanded(child: ABTextInput(
                controller: tHouseFamilyMembersController,
                autoValidator: AutovalidateMode.onUserInteraction,
                titleText: Strings.totalHouseholdFamilyMembers,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter members';
                  }return null;
                },
                hintText: "4",
              ),),
              Expanded(child: ABTextInput(
                controller: unmarriedMembersController,
                autoValidator: AutovalidateMode.onUserInteraction,
                titleText: Strings.noOfUnmarriedChildren,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter members';
                  }return null;
                },
                hintText: "2",
              ),),
            ],
          ),
          Row(
            children: [
              Expanded(child: ABTextInput(
                controller: dependentsController,
                autoValidator: AutovalidateMode.onUserInteraction,
                titleText: Strings.noOFDependents,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter members';
                  }return null;
                },
                hintText: "5",
              ),),
              Expanded(
                child: dropdown_widget(
                  value: i,
                  name: Strings.typeOfRoof,
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
                  name: Strings.typeOfOwnerShip,
                  onChanged: (p0) {
                    setState(() {
                      i=p0!;
                    });
                  },
                  data: data,
                ),
              ),
              Expanded(
                child: dropdown_widget(
                  value: i,
                  name: Strings.locality,
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
                  name: Strings.religionCommunity,
                  onChanged: (p0) {
                    setState(() {
                      i=p0!;
                    });
                  },
                  data: data,
                ),
              ),
              Expanded(
                child: dropdown_widget(
                  value: i,
                  name: Strings.casteCategory,
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
          SizedBox(height: 13.h,),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 40.h,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: kPrimaryColor
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HouseHoldDetailsPage(),));
                        }, child: Text("Save & Next")),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
