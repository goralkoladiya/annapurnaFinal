import 'package:annapurna225/All%20Product%20Screen/screen4.dart';
import 'package:annapurna225/components/TextBtnWidget.dart';
import 'package:annapurna225/components/constants.dart';
import 'package:annapurna225/components/dropdown_widget.dart';
import 'package:annapurna225/utils/strings.dart';
import 'package:annapurna225/utils/theme_config.dart';
import 'package:annapurna225/widgets/ab_text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class screen3 extends StatefulWidget {
  const screen3({Key? key}) : super(key: key);

  @override
  State<screen3> createState() => _screen3State();
}

class _screen3State extends State<screen3> {
  TextEditingController loanPurposeController=TextEditingController();
  TextEditingController appliedAmountController=TextEditingController();
  TextEditingController recommendedAmountController=TextEditingController();
  TextEditingController coApplicationRelationshipWithClientController=TextEditingController();
  TextEditingController totalLadUnitController=TextEditingController();
  TextEditingController totalHomeSteadController=TextEditingController();
  TextEditingController extentOfLandAreaForConstructionController=TextEditingController();
  TextEditingController landTitleBelongsToController=TextEditingController();
  TextEditingController titleHolderNameController=TextEditingController();
  TextEditingController plotNoController=TextEditingController();
  TextEditingController recordNoController=TextEditingController();
  TextEditingController tehsilNameController=TextEditingController();
  TextEditingController nocRemarkController=TextEditingController();

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding),
              child: Container(
                height: 40.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    TextButton(onPressed: () {

                    }, child: Text("${Strings.loanDetails}",style: myTextStyle100)),
                    TextButton(onPressed: () {

                    }, child: Text("Guarantor's Details",style: myTextStyle100)),
                    TextButton(onPressed: () {

                    }, child: Text("Insurance details",style: myTextStyle100,)),
                    TextButton(onPressed: () {

                    }, child: Text("Bank details",style: myTextStyle100,))
                  ],
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 15,right: 55),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Loan Eligibility",style: myTextStyle100,textAlign: TextAlign.start,),
                        Text("30,000",style: myTextStyle500,),
                        SizedBox(height: 10.h,),
                        Text("Meeting Day",style: myTextStyle100,textAlign: TextAlign.start,),
                        Text("Monday",style: myTextStyle500,)
                      ],
                    ),
                  ),
                  Container(
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("ROI",style: myTextStyle100,),
                        Text("12%",style: myTextStyle500,),
                        SizedBox(height: 10.h,),
                        Text("Meeting Week",style: myTextStyle100,),
                        Text("1st Week%",style: myTextStyle500,)
                      ],
                    ),
                  ),
                  Container(alignment: Alignment.topLeft,
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text("EMI",style: myTextStyle100,),
                        Text("2000",style: myTextStyle500,)
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10.h,),
            Padding(
              padding:const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Divider(
                height: 5,
                color: gray,
              ),
            ),
            SizedBox(height: 10.h,),
            Row(
              children: [
                Expanded(
                  child: dropdown_widget(
                    value: i,
                    name: Strings.loanType,
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
                    name: Strings.tenure,
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
                  controller: loanPurposeController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: Strings.loanPurpose,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter education';
                    }return null;
                  },
                  hintText: "Education",
                ),),
                Expanded(
                  child: dropdown_widget(
                    value: i,
                    name: Strings.loanProduct,
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
                Expanded(child: Padding(
                  padding: EdgeInsets.only(top: 11.h),
                  child: ABTextInput(
                    controller: appliedAmountController,
                    autoValidator: AutovalidateMode.onUserInteraction,
                    titleText: Strings.appliedAmount,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Amount';
                      }return null;
                    },
                    hintText: "10,000",
                  ),
                ),),
                Expanded(child: ABTextInput(
                  controller: recommendedAmountController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: Strings.recommendedAmount,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Amount';
                    }return null;
                  },
                  hintText: "10,000",
                ),),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: dropdown_widget(
                    value: i,
                    name: Strings.loanProductCode,
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
                    name: Strings.choiceOfRepayment,
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding),
              child: ExpansionTile(
                iconColor: kPrimaryColor,
                collapsedIconColor: kPrimaryColor,
                backgroundColor: ThemeColor.expansioncolor,
                collapsedBackgroundColor: ThemeColor.expansioncolor,
                textColor: Colors.black87,
                collapsedShape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))),
                title: Text("${Strings.coApplicantDetails}",style: TextStyle(color: black,fontWeight: FontWeight.bold)),
                children: [
                  Container(
                    color : Colors.white,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(top: 22.h),
                                child: dropdown_widget(
                                  value: i,
                                  name: Strings.coApplicantName,
                                  onChanged: (p0) {
                                    setState(() {
                                      i=p0!;
                                    });
                                  },
                                  data: data,
                                ),
                              ),
                            ),
                            Expanded(child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.coApplicantRelationshipWithClient,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter name';
                                }return null;
                              },
                              hintText: "Father",
                            ),),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding),
              child: ExpansionTile(
                iconColor: kPrimaryColor,
                collapsedIconColor: kPrimaryColor,
                backgroundColor: ThemeColor.expansioncolor,
                collapsedBackgroundColor: ThemeColor.expansioncolor,
                textColor: Colors.black87,
                collapsedShape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))),
                title: Text("Land Title/ROR Details",style: TextStyle(color: black,fontWeight: FontWeight.bold)),
                children: [
                  Container(
                    color : Colors.white,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(child: ABTextInput(
                              controller: totalLadUnitController,
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.totalLandUnit,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter land';
                                }return null;
                              },
                              hintText: "Enter",
                            ),),
                            Expanded(child: ABTextInput(
                              controller: totalHomeSteadController,
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.totalHomeSteadLand,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter land';
                                }return null;
                              },
                              hintText: "Enter",
                            ),),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child: ABTextInput(
                              controller: extentOfLandAreaForConstructionController,
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.extentOfLandArea,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter extent';
                                }return null;
                              },
                              hintText: "Enter",
                            ),),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(top: 22.h),
                                child: dropdown_widget(
                                  value: i,
                                  name: Strings.typeOfLandDocument,
                                  onChanged: (p0) {
                                    setState(() {
                                      i=p0!;
                                    });
                                  },
                                  data: data,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child: ABTextInput(
                              controller: landTitleBelongsToController,
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.landTitleBelongsTo,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter title';
                                }return null;
                              },
                              hintText: "Enter",
                            ),),
                            Expanded(child: ABTextInput(
                              controller: titleHolderNameController,
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.titleHolderName,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter name';
                                }return null;
                              },
                              hintText: "Enter",
                            ),),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child: ABTextInput(
                              controller: plotNoController,
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.plotNo,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter number';
                                }return null;
                              },
                              hintText: "Enter",
                            ),),
                            Expanded(child: ABTextInput(
                              controller: recordNoController,
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.recordNo,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter number';
                                }return null;
                              },
                              hintText: "Enter",
                            ),),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child: Padding(
                              padding: EdgeInsets.only(right: 142.h),
                              child: ABTextInput(
                                controller: tehsilNameController,
                                autoValidator: AutovalidateMode.onUserInteraction,
                                titleText: Strings.tehsilName,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter name';
                                  }return null;
                                },
                                hintText: "Enter",
                              ),
                            ),),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                                child:Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 15.h),
                                      child: Text("${Strings.nocDocument}",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14)),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 6.h),
                                      height: 40.h,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                                        child: OutlinedButton(
                                            style: OutlinedButton.styleFrom(side: BorderSide(color: kPrimaryColor)),
                                            onPressed: (){

                                            }, child: Row(
                                          children: [
                                            Icon(Icons.camera_alt,color: kPrimaryColor,),
                                            Text("Capture Document",style: TextStyle(color: kPrimaryColor,fontSize: 7.5.h),)
                                          ],
                                        )),
                                      ),
                                    )
                                  ],
                                )
                            ),
                            Expanded(
                                child:Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 15.h,),
                                      child: Text("${Strings.landDocument}",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14)),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 6.h),
                                      height: 40.h,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                                        child: OutlinedButton(
                                            style: OutlinedButton.styleFrom(side: BorderSide(color: kPrimaryColor)),
                                            onPressed: (){

                                            }, child: Row(
                                          children: [
                                            Text("Browse File",style: TextStyle(color: kPrimaryColor,fontSize:9.h),),
                                            Text(".jpeg .jpg .png",style: TextStyle(color: Colors.grey,fontSize: 3.h)),
                                            Icon(Icons.file_upload_outlined,color: kPrimaryColor,)
                                          ],
                                        )),
                                      ),
                                    )
                                  ],
                                )
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(top: 22.h),
                                child: dropdown_widget(
                                  value: i,
                                  name: Strings.typeOfHomeImprovement,
                                  onChanged: (p0) {
                                    setState(() {
                                      i=p0!;
                                    });
                                  },
                                  data: data,
                                ),
                              ),
                            ),
                            Expanded(child: ABTextInput(
                              controller: nocRemarkController,
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.nocRemark,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter remark';
                                }return null;
                              },
                              hintText: "Enter",
                            ),),
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
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: kPrimaryColor
                            ),
                            onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => screen4(),));
                            }, child: Text("Next")),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
