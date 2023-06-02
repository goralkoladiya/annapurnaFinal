import 'package:annapurna225/components/TextBtnWidget.dart';
import 'package:annapurna225/components/constants.dart';
import 'package:annapurna225/components/dropdown_widget.dart';
import 'package:annapurna225/utils/strings.dart';
import 'package:annapurna225/widgets/ab_text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class screen7 extends StatefulWidget {
  const screen7({Key? key}) : super(key: key);

  @override
  State<screen7> createState() => _screen7State();
}

class _screen7State extends State<screen7> {
  TextEditingController loanPurposeController=TextEditingController();
  TextEditingController appliedAmountController=TextEditingController();
  TextEditingController recommendedAmountController=TextEditingController();
  TextEditingController nameOfSchoolController=TextEditingController();
  TextEditingController nameOfStudentController=TextEditingController();
  TextEditingController studentDateOfBirthController=TextEditingController();
  TextEditingController ageController=TextEditingController();
  TextEditingController relationshipWithStudentController=TextEditingController();
  TextEditingController admissionNumberController=TextEditingController();
  TextEditingController classOfTheStudentController=TextEditingController();
  TextEditingController annualCourseFeeController=TextEditingController();

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
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text("Loan Eligibility",style: myTextStyle100,textAlign: TextAlign.start,),
                      Text("30,000",style: myTextStyle500,)
                    ],
                  ),
                  Column(
                    children: [
                      Text("ROI",style: myTextStyle100,),
                      Text("12%",style: myTextStyle500,)
                    ],
                  ),
                  Column(
                    children: [
                      Text("EMI",style: myTextStyle100,),
                      Text("2000",style: myTextStyle500,)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text("Meeting Day",style: myTextStyle100,textAlign: TextAlign.start,),
                      Text("Monday",style: myTextStyle500,)
                    ],
                  ),
                  Column(
                    children: [
                      Text("Meeting Week",style: myTextStyle100,),
                      Text("1st Week%",style: myTextStyle500,)
                    ],
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
            Row(
              children: [
                Expanded(child: Padding(
                  padding: EdgeInsets.only(top: 11.h),
                  child: ABTextInput(
                    controller: nameOfSchoolController,
                    autoValidator: AutovalidateMode.onUserInteraction,
                    titleText: "Name of School/Institution",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter name';
                      }return null;
                    },
                    hintText: "Enter",
                  ),
                ),),
                Expanded(child: ABTextInput(
                  controller: nameOfStudentController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: "Name of the Student",
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
                Expanded(child: Padding(
                  padding: EdgeInsets.only(top: 11.h),
                  child: ABTextInput(
                    controller: studentDateOfBirthController,
                    suffix: Icon(Icons.calendar_month,color: kPrimaryColor,),
                    autoValidator: AutovalidateMode.onUserInteraction,
                    titleText: "Student Date of Birth",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter date';
                      }return null;
                    },
                    hintText: "DD MM YYYY",
                  ),
                ),),
                Expanded(child: ABTextInput(
                  controller: ageController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: "Age",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter age';
                    }return null;
                  },
                  hintText: "-",
                ),),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: dropdown_widget(
                    value: i,
                    name: "Relationship with Student",
                    onChanged: (p0) {
                      setState(() {
                        i=p0!;
                      });
                    },
                    data: data,
                  ),
                ),
                Expanded(child: ABTextInput(
                  controller: admissionNumberController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: "Admission Number",
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
                  padding: EdgeInsets.only(top: 11.h),
                  child: ABTextInput(
                    controller: classOfTheStudentController,
                    autoValidator: AutovalidateMode.onUserInteraction,
                    titleText: "Class of the Student",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter class';
                      }return null;
                    },
                    hintText: "Enter",
                  ),
                ),),
                Expanded(child: ABTextInput(
                  controller: annualCourseFeeController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: "Annual course fee",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Amount';
                    }return null;
                  },
                  hintText: "Enter",
                ),),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child:Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 15.h,left: defaultPadding),
                          child: Text("Aadhar Card/Birth Certificate prrof",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14)),
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
                          child: Text("Admission Offer Letter",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14)),
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
                                Icon(Icons.camera_alt,color: kPrimaryColor,),
                                Text("Capture Document",style: TextStyle(color: kPrimaryColor,fontSize: 7.5.h),)
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
                    child:Padding(
                      padding: EdgeInsets.only(right: 150.h),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 15.h),
                            child: Text("Fee Structure",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14)),
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
                      ),
                    )
                ),
              ],
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

                            }, child: Text("Next")),
                      ),
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
