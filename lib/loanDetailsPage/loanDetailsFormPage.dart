import 'package:annapurna225/components/TextBtnWidget.dart';
import 'package:annapurna225/components/constants.dart';
import 'package:annapurna225/components/dialog.dart';
import 'package:annapurna225/components/dropdown_widget.dart';
import 'package:annapurna225/loanDetailsPage/guarantorDetailsPage.dart';
import 'package:annapurna225/utils/strings.dart';
import 'package:annapurna225/widgets/ab_text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoanDetailsFormPage extends StatefulWidget {
  const LoanDetailsFormPage({Key? key}) : super(key: key);

  @override
  State<LoanDetailsFormPage> createState() => _LoanDetailsFormPageState();
}

class _LoanDetailsFormPageState extends State<LoanDetailsFormPage> {
  TextEditingController loanPurposeController=TextEditingController();
  TextEditingController jitAppliedAmountController=TextEditingController();
  TextEditingController jitTenureController=TextEditingController();
  TextEditingController jitRoiController=TextEditingController();
  TextEditingController jitEmiController=TextEditingController();
  TextEditingController cdlLoanOptInController=TextEditingController();
  TextEditingController cdlSelectSubProductController=TextEditingController();
  TextEditingController cdlProductPriceController=TextEditingController();
  TextEditingController cdlDownPaymentController=TextEditingController();
  TextEditingController cdlAppliedAmountController=TextEditingController();
  TextEditingController cdlTenureController=TextEditingController();
  TextEditingController cdlRoiController=TextEditingController();
  TextEditingController cdlEmiController=TextEditingController();

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
              ],
            ),
            Row(
              children: [
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
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 154.h),
                    child: dropdown_widget(
                      value: i,
                      name: Strings.jitLoanOptIn,
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
                Expanded(child: Padding(
                  padding: EdgeInsets.only(top: 11.h),
                  child: ABTextInput(
                    controller: jitAppliedAmountController,
                    autoValidator: AutovalidateMode.onUserInteraction,
                    titleText: Strings.jitAppliedAmount,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter amount';
                      }return null;
                    },
                    hintText: "10,000",
                  ),
                ),),
                Expanded(child: ABTextInput(
                  controller: jitTenureController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: Strings.jitTenure,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter tenure';
                    }return null;
                  },
                  hintText: "36",
                ),),
              ],
            ),
            Row(
              children: [
                Expanded(child: Padding(
                  padding: EdgeInsets.only(top: 11.h),
                  child: ABTextInput(
                    controller: jitRoiController,
                    autoValidator: AutovalidateMode.onUserInteraction,
                    titleText: Strings.jitRoi,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter ROI';
                      }return null;
                    },
                    hintText: "12%",
                  ),
                ),),
                Expanded(child: ABTextInput(
                  controller: jitEmiController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: Strings.jitEmi,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter EMI';
                    }return null;
                  },
                  hintText: "278",
                ),),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 11.h),
                    child: dropdown_widget(
                      value: i,
                      name: Strings.cdlLoanOptIn,
                      onChanged: (p0) {
                        setState(() {
                          i=p0!;
                        });
                      },
                      data: data,
                    ),
                  ),
                ),
                Expanded(
                  child: dropdown_widget(
                    value: i,
                    name: Strings.cdlSelectSubProduct,
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
                    controller: cdlProductPriceController,
                    autoValidator: AutovalidateMode.onUserInteraction,
                    titleText: Strings.cdlProductPrice,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter price';
                      }return null;
                    },
                    hintText: "1200",
                  ),
                ),),
                Expanded(child: ABTextInput(
                  controller: cdlDownPaymentController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: Strings.cdlDownPayment,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Payment';
                    }return null;
                  },
                  hintText: "500",
                ),),
              ],
            ),
            Row(
              children: [
                Expanded(child: Padding(
                  padding: EdgeInsets.only(top: 11.h),
                  child: ABTextInput(
                    controller: cdlAppliedAmountController,
                    autoValidator: AutovalidateMode.onUserInteraction,
                    titleText: Strings.cdlAppliedAmount,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter amount';
                      }return null;
                    },
                    hintText: "10,000",
                  ),
                ),),
                Expanded(child: ABTextInput(
                  controller: cdlTenureController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: Strings.cdlTenure,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter tenure';
                    }return null;
                  },
                  hintText: "36",
                ),),
              ],
            ),
            Row(
              children: [
                Expanded(child: Padding(
                  padding: EdgeInsets.only(top: 11.h),
                  child: ABTextInput(
                    controller: cdlRoiController,
                    autoValidator: AutovalidateMode.onUserInteraction,
                    titleText: Strings.cdlRoi,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter ROI';
                      }return null;
                    },
                    hintText: "12%",
                  ),
                ),),
                Expanded(child: ABTextInput(
                  controller: cdlEmiController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: Strings.cdlEmi,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter EMI';
                    }return null;
                  },
                  hintText: "278",
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
                      name: Strings.choiceOfRepayment,
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
                      height: 40.h,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: kPrimaryColor
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => GuarantorDetailsPage(),));
                          }, child: Text("Next",)),
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
