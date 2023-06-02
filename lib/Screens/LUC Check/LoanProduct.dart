import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

import '../../components/TextBtnWidget.dart';
import '../../components/TextFieldWidget.dart';
import '../../components/constants.dart';
import '../../components/dropdown_widget.dart';
import '../../widgets/ab_text_input.dart';

class LoanProductPage extends StatefulWidget {
  const LoanProductPage({Key? key}) : super(key: key);

  @override
  State<LoanProductPage> createState() => _LoanProductPageState();
}

class _LoanProductPageState extends State<LoanProductPage> {
  TextEditingController amount = TextEditingController();
  TextEditingController remark = TextEditingController();
  TextEditingController Date = TextEditingController();

  String? Purpose;
  List purpose = ["Select One"];

  String? Workstatus;
  List workstatus = ["10%", "20%"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        actions: [
          Expanded(
            child: IconButton(
                color: black, onPressed: () {}, icon: Icon(Icons.arrow_back)),
          ),
          Expanded(
              flex: 3,
              child: Center(
                child: Text("Loan Product",
                    style: boldTextsize6.copyWith(fontSize: 13)),
              )),
          Expanded(flex: 1, child: SizedBox()),
          Expanded(
            child: IconButton(
                color: black,
                onPressed: () {},
                icon:
                    ImageIcon(AssetImage("assets/dasboardimg/Group 148.png"))),
          ),
          Expanded(
            child: PopupMenuButton(
              icon: ImageIcon(
                AssetImage("assets/dasboardimg/Group 149.png"),
                color: Colors.black,
              ),
              onSelected: (value) {},
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
          Expanded(
            flex: 2,
            child: Center(
              child: Text(
                "Vivek s.",
                style: myTextstye1.copyWith(fontSize: 16),
              ),
            ),
          ),
          Expanded(
            child: IconButton(
                color: black,
                onPressed: () {},
                icon: const Icon(
                  Icons.keyboard_arrow_down_rounded,
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 5,
                shadowColor: Colors.black,
                child: SizedBox(
                  height: 28.h,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Applicant Name",
                                style: myTextStyle600a.copyWith(color: grey),
                              ),
                              SizedBox(
                                height: .5.h,
                              ),
                              Text(
                                "Jai Prakash",
                                style: myTextStyle500.copyWith(fontSize: 14),
                              ),
                              SizedBox(
                                height: 1.5.h,
                              ),
                              Text(
                                "Center Name",
                                style: myTextStyle600a.copyWith(color: grey),
                              ),
                              Text(
                                "C1",
                                style: myTextStyle500.copyWith(fontSize: 14),
                              ),
                              SizedBox(
                                height: 1.5.h,
                              ),
                              Text(
                                "Member Id",
                                style: myTextStyle600a.copyWith(color: grey),
                              ),
                              Text(
                                "M1234",
                                style: myTextStyle500.copyWith(fontSize: 14),
                              ),
                              SizedBox(
                                height: 1.5.h,
                              ),
                              Text(
                                "Date of Disbursement",
                                style: myTextStyle600a.copyWith(color: grey),
                              ),
                              Text(
                                "O2 Feb 2022",
                                style: myTextStyle500.copyWith(fontSize: 14),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Spouse",
                                style: myTextStyle600a.copyWith(color: grey),
                              ),
                              SizedBox(
                                height: .5.h,
                              ),
                              Text(
                                "Meena",
                                style: myTextStyle500.copyWith(fontSize: 14),
                              ),
                              SizedBox(
                                height: 1.5.h,
                              ),
                              Text(
                                "Group Name",
                                style: myTextStyle600a.copyWith(color: grey),
                              ),
                              Text(
                                "Group One",
                                style: myTextStyle500.copyWith(fontSize: 14),
                              ),
                              SizedBox(
                                height: 1.5.h,
                              ),
                              Text(
                                "Loan No",
                                style: myTextStyle600a.copyWith(color: grey),
                              ),
                              Text(
                                "12345",
                                style: myTextStyle500.copyWith(fontSize: 14),
                              ),
                              SizedBox(
                                height: 1.5.h,
                              ),
                              Text(
                                "LUC Status",
                                style: myTextStyle600a.copyWith(color: grey),
                              ),
                              Text(
                                "Pending",
                                style: myTextStyle500.copyWith(fontSize: 14),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Village",
                                style: myTextStyle600a.copyWith(color: grey),
                              ),
                              SizedBox(
                                height: .5.h,
                              ),
                              Text(
                                "Dakarang G",
                                style: myTextStyle500.copyWith(fontSize: 14),
                              ),
                              SizedBox(
                                height: 1.5.h,
                              ),
                              Text(
                                "Member Name",
                                style: myTextStyle600a.copyWith(color: grey),
                              ),
                              Text(
                                "Jai Prakash",
                                style: myTextStyle500.copyWith(fontSize: 14),
                              ),
                              SizedBox(
                                height: 1.5.h,
                              ),
                              Text(
                                "Loan Amount",
                                style: myTextStyle600a.copyWith(color: grey),
                              ),
                              Text(
                                "20,0000",
                                style: myTextStyle500.copyWith(fontSize: 14),
                              ),
                              SizedBox(
                                height: 1.5.h,
                              ),
                              Text(
                                "Purpose",
                                style: myTextStyle600a.copyWith(color: grey),
                              ),
                              Text(
                                "Purpose Education",
                                style: myTextStyle500.copyWith(fontSize: 14),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: TextFieldWidget(
                    isRequired: false,
                    name: 'Loan Amount Utilized',
                    controller: amount,
                  )),
                  Expanded(
                      child: dropdown_widget(
                    hint: "Select",
                    name: 'Select Purpose',
                    data: purpose,
                    onChanged: (p0) {
                      setState(() {
                        Purpose = p0;
                      });
                    },
                    value: Purpose,
                    filledColor: white,
                  )),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: TextFieldWidget(
                    isRequired: false,
                    name: 'Remark',
                    controller: remark,
                  )),
                  Expanded(
                      child: dropdown_widget(
                    hint: "Select(%)",
                    name: 'Work Completion',
                    data: workstatus,
                    onChanged: (p0) {
                      setState(() {
                        Workstatus = p0;
                      });
                    },
                    value: Workstatus,
                    filledColor: white,
                  )),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: TextFieldWidget(
                    isRequired: false,
                    name: 'Tranche_1 Amount',
                    controller: amount,
                  )),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: ABTextInput(
                        titleText: 'Tranche_1 Visit',
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              value.length <= 9) {
                            return 'Enter Valid Password';
                          }
                          return null;
                        },
                        controller: Date,
                        hintText: 'DD MM YYYY',
                        suffix: IconButton(
                          icon: Icon(Icons.calendar_today),
                          onPressed: () async {
                            DateTime? dateTime = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1960),
                                lastDate: DateTime.now());

                            if (dateTime != null) {
                              Date.text =
                                  DateFormat("dd-MM-yyyy").format(dateTime);
                              setState(() {});
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: TextFieldWidget(
                    isRequired: false,
                    name: 'Tranche_2 Amount',
                    controller: amount,
                  )),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: ABTextInput(
                        titleText: 'Tranche_2 Visit',
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              value.length <= 9) {
                            return 'Enter Valid Password';
                          }
                          return null;
                        },
                        controller: Date,
                        hintText: 'DD MM YYYY',
                        suffix: IconButton(
                          icon: Icon(Icons.calendar_today),
                          onPressed: () async {
                            DateTime? dateTime = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1960),
                                lastDate: DateTime.now());

                            if (dateTime != null) {
                              Date.text =
                                  DateFormat("dd-MM-yyyy").format(dateTime);
                              setState(() {});
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                "Proof of Tranche",
                style: myTextStyle700.copyWith(fontSize: 13),
              ),
              Container(
                height: 12.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: black),
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.camera_alt_rounded,
                  color: gray,
                  size: 30,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                      child: TextBtnWidget(
                    borderColor: kPrimaryColor,
                    name: 'Refresh',
                    btnColor: white,
                    textColor: kPrimaryColor,
                    onTap: () {},
                  )),
                  Expanded(
                      child: TextBtnWidget(
                    borderColor: Colors.grey,
                    name: 'Submit',
                    btnColor: grey.shade200,
                    textColor: grey,
                    onTap: () {},
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
