import 'package:annapurna225/All%20Product%20Screen/screen6.dart';
import 'package:annapurna225/components/TextBtnWidget.dart';
import 'package:annapurna225/components/constants.dart';
import 'package:annapurna225/components/dropdown_widget.dart';
import 'package:annapurna225/utils/roundedImage.dart';
import 'package:annapurna225/utils/strings.dart';
import 'package:annapurna225/utils/theme_config.dart';
import 'package:annapurna225/widgets/ab_text_input.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class screen5 extends StatefulWidget {
  const screen5({Key? key}) : super(key: key);

  @override
  State<screen5> createState() => _screen5State();
}

class _screen5State extends State<screen5> {
  TextEditingController areaNameController=TextEditingController();
  TextEditingController businessAddressLine1Controller=TextEditingController();
  TextEditingController businessAddressLine2Controller=TextEditingController();
  TextEditingController cityTownVillageController=TextEditingController();
  TextEditingController pinCodeController=TextEditingController();
  TextEditingController landMarkController=TextEditingController();
  TextEditingController distanceFromBranchController=TextEditingController();
  TextEditingController nameOfBusinessEnterPriceController=TextEditingController();
  TextEditingController gstInNoController=TextEditingController();
  TextEditingController annualTurnoverController=TextEditingController();
  TextEditingController totalBusinessEnterpriseController=TextEditingController();
  TextEditingController presentBusinessVintageController=TextEditingController();
  TextEditingController supplierNameController=TextEditingController();
  TextEditingController supplierMobileNoController=TextEditingController();
  TextEditingController supplierFrequencyOfPurchaseController=TextEditingController();
  TextEditingController supplierKnowClientSinceController=TextEditingController();
  TextEditingController supplierFeedbackAboutClientController=TextEditingController();
  TextEditingController nameController=TextEditingController();
  TextEditingController mobileNoController=TextEditingController();
  TextEditingController knowTheClientSinceController=TextEditingController();
  TextEditingController feedbackAboutTheClientController=TextEditingController();
  TextEditingController clientController=TextEditingController();


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
            SizedBox(height: 5.h,),
            Row(
              children: [
                Expanded(
                  child: dropdown_widget(
                    value: i,
                    name: "Type Of Business",
                    onChanged: (p0) {
                      setState(() {
                        i=p0!;
                      });
                    },
                    data: data,
                  ),
                ),
                Expanded(child: ABTextInput(
                  controller: areaNameController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: "Area Name",
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
                  controller: businessAddressLine1Controller,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: "Business Address Line 1",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter address';
                    }return null;
                  },
                  hintText: "Enter",
                ),),
              ],
            ),
            Row(
              children: [
                Expanded(child: ABTextInput(
                  controller: businessAddressLine2Controller,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText:"Business Address Line 2",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter address';
                    }return null;
                  },
                  hintText: "Enter",
                ),),
              ],
            ),
            Row(
              children: [
                Expanded(child: ABTextInput(
                  controller: cityTownVillageController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: "City/Town/Village",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter city';
                    }return null;
                  },
                  hintText: "Enter",
                ),),
                Expanded(
                  child: dropdown_widget(
                    value: i,
                    name: "District",
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
                    name: "State",
                    onChanged: (p0) {
                      setState(() {
                        i=p0!;
                      });
                    },
                    data: data,
                  ),
                ),
                Expanded(child: ABTextInput(
                  controller: pinCodeController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: Strings.pinCode,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter pin code';
                    }return null;
                  },
                  hintText: "Enter",
                ),),
              ],
            ),
            Row(
              children: [
                Expanded(child: ABTextInput(
                  controller: landMarkController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: "Land Mark",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter landmark';
                    }return null;
                  },
                  hintText: "Enter",
                ),),
                Expanded(
                  child: dropdown_widget(
                    value: i,
                    name: "Entity Type",
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
                    name: "Business Place Ownership Status",
                    onChanged: (p0) {
                      setState(() {
                        i=p0!;
                      });
                    },
                    data: data,
                  ),
                ),
                Expanded(child: ABTextInput(
                  controller: distanceFromBranchController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: "Distance From Branch",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter distance';
                    }return null;
                  },
                  hintText: "Enter",
                ),),
              ],
            ),
            Row(
              children: [
                Expanded(child: ABTextInput(
                  controller: nameOfBusinessEnterPriceController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: "Name of The Business Enterprise",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter name';
                    }return null;
                  },
                  hintText: "Enter",
                ),),
                Expanded(child: ABTextInput(
                  controller: gstInNoController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: "GSTIN No. If Registered With GST",
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
                Expanded(child: ABTextInput(
                  controller: annualTurnoverController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: "Annual Turnover (Rs.)",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Amount';
                    }return null;
                  },
                  hintText: "Enter",
                ),),
                Expanded(child: ABTextInput(
                  controller: totalBusinessEnterpriseController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: "Total Business Experience",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter experience';
                    }return null;
                  },
                  hintText: "Enter",
                ),),
              ],
            ),
            Row(
              children: [
                Expanded(child: Padding(
                  padding: EdgeInsets.only(right: 22.h),
                  child: ABTextInput(
                    controller: presentBusinessVintageController,
                    autoValidator: AutovalidateMode.onUserInteraction,
                    titleText: "Present Business Vintage (Years)",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter years';
                      }return null;
                    },
                    hintText: "Enter",
                  ),
                ),),
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
                title: Text("Upload Documents",style: TextStyle(color: black,fontWeight: FontWeight.bold)),
                children: [
                  Container(
                    color : Colors.white,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(right: 20.h),
                                child: dropdown_widget(
                                  value: i,
                                  name: "Proof Of Business",
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
                            Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding),
                                  child: Container(
                                    height : 5.5.h,
                                    child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        side: BorderSide(color: kPrimaryColor)
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(Icons.camera_alt,color: kPrimaryColor,),
                                          Text("Capture Document",style: TextStyle(color: kPrimaryColor,fontSize: 2.5.w),)
                                        ],
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                )
                            ),
                            Expanded(
                                child:Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding),
                                  child: Container(
                                    height : 5.5.h,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(backgroundColor: kPrimaryColor),
                                      child: Row(
                                        children: [
                                          Icon(Icons.remove_red_eye,),
                                          Text("View Sample",style: TextStyle(fontSize: 3.5.w),)
                                        ],
                                      ),
                                      onPressed: () {
                                        showDialog(context: context, builder: (context) {
                                          return Dialog(
                                            elevation: 10,
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                            child: Container(
                                              height: 65.h,
                                              width: 35.h,
                                              child: Padding(
                                                padding: EdgeInsets.all(25),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Sample document of proof of business",style: TextStyle(color: black,fontSize: 1.5.h,fontWeight: FontWeight.bold)),
                                                    SizedBox(height: 2.h,),
                                                    Text("Lease agreement",style: TextStyle(color: black,fontSize: 1.3.h,fontWeight: FontWeight.bold)),
                                                    Container(
                                                      height: 20.h,
                                                      width: 35.h,
                                                      child: Row(
                                                        children: [
                                                          Expanded(child: Image.asset('assets/adhaar/image 49.png')),
                                                          SizedBox(width: 1.w,),
                                                          Expanded(child: Image.asset('assets/adhaar/image 49.png')),
                                                          SizedBox(width: 1.w,),
                                                          Expanded(child: Image.asset('assets/adhaar/image 49.png')),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 2.h,),
                                                    Text("Other agreement",style: TextStyle(color: black,fontSize: 1.3.h,fontWeight: FontWeight.bold)),
                                                    Container(
                                                      height: 20.h,
                                                      width: 29.h,
                                                      child: Row(
                                                        children: [
                                                          Expanded(child: Image.asset('assets/adhaar/image 49.png')),
                                                          SizedBox(width: 1.w,),
                                                          Expanded(child: Image.asset('assets/adhaar/image 49.png')),
                                                          SizedBox(width: 1.w,),
                                                          Expanded(child: Image.asset('assets/adhaar/image 49.png')),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 2.h,),
                                                    Row(
                                                      children: [
                                                        Expanded(
                                                          child: Padding(
                                                            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                                                            child: OutlinedButton(
                                                                style: OutlinedButton.styleFrom(side: BorderSide(color: kPrimaryColor)),
                                                                onPressed: () {
                                                              Navigator.pop(context);
                                                            }, child: Text("Close",style: TextStyle(color: kPrimaryColor),)),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },);
                                      },
                                    ),
                                  ),
                                )
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Stack(
                                children:[
                              myRoundedImage('assets/adhaar/image 49.png', context),
                                  Icon(Icons.remove_circle_outlined,color: red,size: 2.h)
                            ]),
                            SizedBox(width: 3.w,),
                            Stack(
                                children:[
                                  myRoundedImage('assets/adhaar/image 49.png', context),
                                  Icon(Icons.remove_circle_outlined,color: red,size: 2.h)
                                ]),
                            SizedBox(width: 3.w,),
                            Stack(
                                children:[
                                  myRoundedImage('assets/adhaar/image 49.png', context),
                                  Icon(Icons.remove_circle_outlined,color: red,size: 2.h)
                                ]),
                          ],
                        )
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
                title: Text("Reference Details (Supplier)",style: TextStyle(color: black,fontWeight: FontWeight.bold)),
                children: [
                  Container(
                    color : Colors.white,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(child: ABTextInput(
                              controller: supplierNameController,
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: "Supplier Name",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter name';
                                }return null;
                              },
                              hintText: "Enter",
                            ),),
                            Expanded(child: ABTextInput(
                              controller: supplierMobileNoController,
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: "Supplier Mobile No.",
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
                            Expanded(child: ABTextInput(
                              controller: supplierFrequencyOfPurchaseController,
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: "Supplier Frequency of Purchase",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter frequency';
                                }return null;
                              },
                              hintText: "Enter",
                            ),),
                            Expanded(
                              child: dropdown_widget(
                                value: i,
                                name: "Supplier Know The Client Since",
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
                              controller: supplierFeedbackAboutClientController,
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: "Supplier Feedback About The Client",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter feedback';
                                }return null;
                              },
                              hintText: "Enter",
                            ),),
                            Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding),
                                  child: Container(
                                    height : 6.h,
                                    child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                          side: BorderSide(color: kPrimaryColor)
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(Icons.add_circle_outline,color: kPrimaryColor,),
                                          Text("Add",style: TextStyle(color: kPrimaryColor,fontSize: 2.5.w,decoration: TextDecoration.underline),)
                                        ],
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                )
                            ),
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
                title: Text("Reference Details (Neighbour)",style: TextStyle(color: black,fontWeight: FontWeight.bold)),
                children: [
                  Container(
                    color : Colors.white,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(child: ABTextInput(
                              controller: nameController,
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: "Name",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter name';
                                }return null;
                              },
                              hintText: "Enter",
                            ),),
                            Expanded(child: ABTextInput(
                              controller: mobileNoController,
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.mobileNo,
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
                            Expanded(child: ABTextInput(
                              controller: knowTheClientSinceController,
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: "Know The Client Since",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter time';
                                }return null;
                              },
                              hintText: "Enter",
                            ),),
                            Expanded(child: ABTextInput(
                              controller: feedbackAboutTheClientController,
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: "Feedback About The Client",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter feedback';
                                }return null;
                              },
                              hintText: "Enter",
                            ),),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child: Padding(
                              padding: EdgeInsets.only(right: 20.h),
                              child: ABTextInput(
                                controller: clientController,
                                autoValidator: AutovalidateMode.onUserInteraction,
                                titleText: "Client (Enquire About Previous Credit)",
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter credit';
                                  }return null;
                                },
                                hintText: "Enter",
                              ),
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
                      height: 6.h,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: kPrimaryColor
                            ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => screen6(),));
                            }, child: Text("Save & Next")),
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