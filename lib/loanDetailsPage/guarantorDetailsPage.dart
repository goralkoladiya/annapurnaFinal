import 'package:annapurna225/components/TextBtnWidget.dart';
import 'package:annapurna225/components/constants.dart';
import 'package:annapurna225/components/dialog.dart';
import 'package:annapurna225/components/dropdown_widget.dart';
import 'package:annapurna225/loanDetailsPage/insuranceDetailsPage.dart';
import 'package:annapurna225/utils/strings.dart';
import 'package:annapurna225/widgets/ab_text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GuarantorDetailsPage extends StatefulWidget {
  const GuarantorDetailsPage({Key? key}) : super(key: key);

  @override
  State<GuarantorDetailsPage> createState() => _GuarantorDetailsPageState();
}

class _GuarantorDetailsPageState extends State<GuarantorDetailsPage> {
  TextEditingController guarantorNameController=TextEditingController();
  TextEditingController dateOfBirthController=TextEditingController();
  TextEditingController guarantorAgeController=TextEditingController();
  TextEditingController spouseController=TextEditingController();
  TextEditingController fatherController=TextEditingController();
  TextEditingController mobileNumberController=TextEditingController();
  TextEditingController primaryKycController=TextEditingController();
  TextEditingController kycNoController=TextEditingController();
  TextEditingController presentAddressController=TextEditingController();

  List data=["Select","Yes","No"];
  String i="Select";
  String otpVerified=Strings.sendOTP;
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
            Row(
              children: [
                Expanded(
                  child: dropdown_widget(
                    value: i,
                    name: Strings.select,
                    onChanged: (p0) {
                      setState(() {
                        i=p0!;
                      });
                    },
                    data: data,
                  ),
                ),
                Expanded(child: ABTextInput(
                  controller: guarantorNameController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: Strings.guarantorName,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Name';
                    }return null;
                  },
                  hintText: "Deepak",
                ),),
              ],
            ),
            Row(
              children: [
                Expanded(child: ABTextInput(
                  controller: dateOfBirthController,
                  suffix: IconButton(onPressed: () {
                    
                  }, icon: Icon(Icons.calendar_month)),
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: Strings.dateOfBirth,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Date Of Birth';
                    }return null;
                  },
                  hintText: "DD MM YYYY",
                ),),
                Expanded(child: ABTextInput(
                  controller: guarantorAgeController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: Strings.guarantorAge,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Age';
                    }return null;
                  },
                  hintText: "31",
                ),),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: dropdown_widget(
                    value: i,
                    name: Strings.gender,
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
                    name: Strings.maritalStatus,
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
                  controller: spouseController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: Strings.spouse,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter spouse';
                    }return null;
                  },
                  hintText: "Mahi",
                ),),
                Expanded(child: ABTextInput(
                  controller: fatherController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: Strings.father,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Name';
                    }return null;
                  },
                  hintText: "Rajesh Kumar",
                ),),
              ],
            ),
            Row(
              children: [
                Expanded(child: ABTextInput(
                  controller: mobileNumberController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: Strings.mobileNo,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter number';
                    }return null;
                  },
                  hintText: "+91-9876543212",
                ),),
                Expanded(
                    child: otpVerified=="${Strings.sendOTP}"?InkWell(
                        onTap: (){
                          myDiloag(context, 'assets/Done.png', "OTP Sent Successfully", "Okay", (){
                            Navigator.pop(context);
                            myDialogOtp(context, 'assets/dailog2.png', "Verify Mobile Number", "Submit", (){
                              Navigator.pop(context);
                              setState(() {
                                otpVerified="Verified";
                              });
                            }, "Close", (){
                              Navigator.pop(context);
                            });
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: defaultPadding,top: defaultPadding),
                          child: Text("$otpVerified",style: TextStyle(color: kPrimaryColor,decoration: TextDecoration.underline),),
                        )):Row(
                      children: [
                        Icon(Icons.check_circle_outline_outlined,color: green,),
                        Text("Verified",style: TextStyle(color: green),)
                      ],
                    )
                ),
              ],
            ),
            Row(
              children: [
                Expanded(child: ABTextInput(
                  controller: primaryKycController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: Strings.primaryKyc,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter KYC';
                    }return null;
                  },
                  hintText: "Voter ID",
                ),),
                Expanded(child: ABTextInput(
                  controller: kycNoController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: Strings.kycNo,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter number';
                    }return null;
                  },
                  hintText: "VOTE1234",
                ),),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 154.h),
                    child: dropdown_widget(
                      value: i,
                      name: Strings.guarantorOccupation,
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
                  controller: presentAddressController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: Strings.presentAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter address';
                    }return null;
                  },
                  hintText: "Address - 123 Address, Village - Village 1",
                ),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: defaultPadding),
                      child: Container(
                        height: 40.h,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              side: BorderSide(color: kPrimaryColor)
                          ),
                          onPressed: () {
                          },
                          child: Text("Back",style: TextStyle(color: kPrimaryColor)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: defaultPadding),
                      child: Container(
                        height: 40.h,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: kPrimaryColor
                            ),
                            onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => InsuranceDetailsPage(),));
                            }, child: Text("Next",)),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
