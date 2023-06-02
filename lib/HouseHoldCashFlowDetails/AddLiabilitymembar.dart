import 'package:annapurna225/HouseHoldCashFlowDetails/CheckLoanEligibility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/TextBtnWidget.dart';
import '../components/constants.dart';
import '../components/dropdown_widget.dart';
import '../utils/strings.dart';
import '../widgets/ab_button.dart';
import '../widgets/ab_text_input.dart';

class AddLiabilitymember extends StatefulWidget {
  const AddLiabilitymember({Key? key}) : super(key: key);
  @override
  State<AddLiabilitymember> createState() => _AddLiabilitymemberState();
}

class _AddLiabilitymemberState extends State<AddLiabilitymember> {
  List Member=["Select","",""];
  List AccountStatus=["Active","",""];
  List BankTransfer=["No","Yes",""];
  String status="Active";
  String bank="No";
  List InstitutionType=["Select","",""];
  String member="Select";
  String institutiontype="Select";
  TextEditingController _InstitutionNameLiability=TextEditingController();
  TextEditingController _LoanAccountNo=TextEditingController();
  TextEditingController _OutstandingBalanceLiability=TextEditingController();
  TextEditingController _EmiLiability=TextEditingController();
  TextEditingController _Foreclosure=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        title: Text("Household",overflow: TextOverflow.ellipsis,style: TextStyle(color: black),),
        actions: [
          // SizedBox(width: 10),
          IconButton(
              color: black,
              onPressed: () {},
              icon: ImageIcon(AssetImage("assets/dasboardimg/Group 148.png"))),

          PopupMenuButton(
            icon: ImageIcon(AssetImage("assets/dasboardimg/Group 149.png"),color: Colors.black,),
            onSelected: (value) {
              switch (value) {
                case 1:
                // Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePassword(),));
                  break;
                case 2:
                // Navigator.push(context, MaterialPageRoute(builder: (context) => Logout(),));
                  break;
              }
            },itemBuilder: (context) =>
          [
            const PopupMenuItem(value: 1,child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Change Password",style: TextStyle(fontWeight: FontWeight.w500),),
                Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15,)
              ],
            )),
            const PopupMenuItem(value: 2,child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Logout",style: TextStyle(fontWeight: FontWeight.w500),),
                Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15,)
              ],
            )),

          ],),

          PopupMenuButton(
            icon: ImageIcon(AssetImage("assets/dasboardimg/Group 150.png"),color: Colors.black),
            onSelected: (value) {
              switch (value) {
                case 1:
                  showDialog(context: context, builder: (context) {
                    return AlertDialog(
                      content: SizedBox(
                        height: 38.h,width: 90.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Contact Us", style: myTextstye,textAlign: TextAlign.center,),
                            SizedBox(height: 3.h,),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: grey),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Column( crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image.asset("assets/dasboardimg/call 1.png"),
                                      Text("Support No"),
                                      Text("+91 8712459603"),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 3.h,),
                            TextBtnWidget(name: "Close",btnColor: white,borderColor: kPrimaryColor,onTap: () {

                            },)
                          ],
                        ),
                      ),
                    );
                  },);
                  break;
                case 2:
                // Navigator.push(context, MaterialPageRoute(builder: (context) => Logout(),));
                  break;
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(value: 1,child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Contact Us",style: TextStyle(fontWeight: FontWeight.w500),),
                  Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15,)
                ],
              )),
              const PopupMenuItem(value: 2,child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("FAQs",style: TextStyle(fontWeight: FontWeight.w500),),
                  Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15,)
                ],
              )),
              const PopupMenuItem(value: 3,child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Videos",style: TextStyle(fontWeight: FontWeight.w500),),
                  Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15,)
                ],
              )),

            ],
            offset: Offset(0.0, AppBar().preferredSize.height+5),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
              ),
            ),),

          Center(
            child: Text(
              "Vivek s.",
              style: myTextstye1.copyWith(fontSize: 14),
            ),
          ),
          IconButton(
              color: black,
              onPressed: () {},
              icon: const Icon(Icons.keyboard_arrow_down_rounded,size: 15,))
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                child: Row(
                  children: [
                    TextButton(onPressed: (){}, child: Text("HH Monthly Income",style:  myTextStyle600,)),
                    TextButton(onPressed: (){}, child: Text("HH Expenses",
                      style: myTextStyle600,)),
                    TextButton(onPressed: (){}, child: Text("HH Liability",
                      style: myTextStyle600,)),
                    TextButton(onPressed: (){}, child: Text("Loan Eligibility",
                      style: myTextStyle600,)),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:5),
            child: Row(
              children: [
                Expanded(child: dropdown_widget(
                  value: member,
                  name: "Member Name",
                  onChanged: (p0) {
                    setState(() {
                      member=p0!;
                    });
                  },
                  data: Member,
                ),),
                Expanded(child: dropdown_widget(
                  value: institutiontype,
                  name: "Institution Type",
                  onChanged: (p0) {
                    setState(() {
                      institutiontype=p0!;
                    });
                  },
                  data: InstitutionType,
                ),),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: [
                Expanded(
                  child: ABTextInput(
                    autoValidator: AutovalidateMode.onUserInteraction,
                    titleText: Strings.InstitutionNameLiability,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter InstitutionNameLiability';
                      }
                      return null;
                    },
                    controller: _InstitutionNameLiability,
                    hintText: "Enter",
                  ),
                ),
                Expanded(
                  child: ABTextInput(
                    autoValidator: AutovalidateMode.onUserInteraction,
                    titleText: Strings.LoanAccountNo,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Loan Account No';
                      }
                      return null;
                    },
                    controller: _LoanAccountNo,
                    hintText: "Enter",
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: [
                Expanded(
                  child: ABTextInput(
                    autoValidator: AutovalidateMode.onUserInteraction,
                    titleText: Strings.OutstandingBalanceLiability,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Outstanding Balance';
                      }
                      return null;
                    },
                    controller: _OutstandingBalanceLiability,
                    hintText: "Enter",
                  ),
                ),
                Expanded(
                  child: ABTextInput(
                    autoValidator: AutovalidateMode.onUserInteraction,
                    titleText: Strings.EmiLiability,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Emi';
                      }
                      return null;
                    },
                    controller: _EmiLiability,
                    hintText: "Enter",
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: [
                Expanded(
                  child: ABTextInput(
                    autoValidator: AutovalidateMode.onUserInteraction,
                    titleText: Strings.Foreclosure,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Foreclosure';
                      }
                      return null;
                    },
                    controller: _Foreclosure,
                    hintText: "No",
                  ),
                ),
                Expanded(child: dropdown_widget(
                  value: status,
                  name: "Account Status",
                  onChanged: (p0) {
                    setState(() {
                      status=p0!;
                    });
                  },
                  data: AccountStatus,
                ),),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: [
                Expanded(child: dropdown_widget(
                  value: bank,
                  name: "Balance Transfer (BT)",
                  onChanged: (p0) {
                    setState(() {
                      bank=p0!;
                    });
                  },
                  data: BankTransfer,
                ),),

              ],
            ),
          ),
          ABButton(onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CheckLoanEligibility(),));
          },
            text:"Add" ,
            paddingTop: 8.0,
            paddingBottom: 15.0,
            paddingLeft: 5.0,
            paddingRight: 8.0,)
        ],
      ),
    );
  }
}
