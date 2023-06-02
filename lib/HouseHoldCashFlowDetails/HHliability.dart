import 'package:annapurna225/HouseHoldCashFlowDetails/AddLiabilitymembar.dart';
import 'package:annapurna225/components/dropdown_widget.dart';
import 'package:annapurna225/utils/theme_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/TextBtnWidget.dart';
import '../components/constants.dart';
import '../utils/strings.dart';
import '../widgets/ab_button.dart';

class HHliability extends StatefulWidget {
  const HHliability({Key? key}) : super(key: key);

  @override
  State<HHliability> createState() => _HHliabilityState();
}

class _HHliabilityState extends State<HHliability> {
  List data = ["No", "Yes"];
  List data1 = ["Active", "Yes"];
  String i = "No";
  String j = "Active";

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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: Row(
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "HH Monthly Income",
                      style: myTextStyle600,
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "HH Expenses",
                      style: myTextStyle600,
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "HH Liability",
                      style: myTextStyle600,
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Loan Eligibility",
                      style: myTextStyle600,
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              color: Colors.black12,
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Member Name",
                        style: myTextStyllibility,
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        "Institution Type",
                        style: myTextStyllibility,
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        "Institution Name",
                        style: myTextStyllibility,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        Strings.MemberName,
                        style: myTextStyleliability2,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        Strings.InstitutionType,
                        style: myTextStyleliability2,
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Text(
                        Strings.InstitutionName,
                        style: myTextStyleliability2,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Loan Account No",
                        style: myTextStyllibility,
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        "Outstanding Balance",
                        style: myTextStyllibility,
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        "EMI",
                        style: myTextStyllibility,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        Strings.LoanAccountNumber,
                        style: myTextStyleliability2,
                      ),
                      SizedBox(
                        width: 45,
                      ),
                      Text(
                        Strings.OutstandingBalance,
                        style: myTextStyleliability2,
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        Strings.Emi,
                        style: myTextStyleliability2,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: dropdown_widget(
                          value: i,
                          name: "Foreclosure",
                          onChanged: (p0) {
                            setState(() {
                              i = p0!;
                            });
                          },
                          data: data,
                        ),
                      ),
                      Expanded(
                        child: dropdown_widget(
                          value: j,
                          name: "Account Status",
                          onChanged: (p0) {
                            setState(() {
                              j = p0!;
                            });
                          },
                          data: data1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: dropdown_widget(
                          value: i,
                          name: "Balance Transfer (BT)",
                          onChanged: (p0) {
                            setState(() {
                              i = p0!;
                            });
                          },
                          data: data,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ExpansionTile(
                    backgroundColor:ThemeColor.expansioncolor,
                    collapsedBackgroundColor: ThemeColor.expansioncolor,
                    textColor: Colors.black87,
                    title: Text("Member Two"),
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            children: [
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Member Name",
                                    style: myTextStyllibility,
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Text(
                                    "Institution Type",
                                    style: myTextStyllibility,
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Text(
                                    "Institution Name",
                                    style: myTextStyllibility,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    Strings.MemberName,
                                    style: myTextStyleliability2,
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    Strings.InstitutionType,
                                    style: myTextStyleliability2,
                                  ),
                                  SizedBox(
                                    width: 60,
                                  ),
                                  Text(
                                    Strings.InstitutionName,
                                    style: myTextStyleliability2,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Loan Account No",
                                    style: myTextStyllibility,
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Text(
                                    "Outstanding Balance",
                                    style: myTextStyllibility,
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Text(
                                    "EMI",
                                    style: myTextStyllibility,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    Strings.LoanAccountNumber,
                                    style: myTextStyleliability2,
                                  ),
                                  SizedBox(
                                    width: 45,
                                  ),
                                  Text(
                                    Strings.OutstandingBalance,
                                    style: myTextStyleliability2,
                                  ),
                                  SizedBox(
                                    width: 100,
                                  ),
                                  Text(
                                    Strings.Emi,
                                    style: myTextStyleliability2,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: Colors.white,
                        child: Row(
                          children: [
                            Expanded(
                              child: dropdown_widget(
                                value: i,
                                name: "Foreclosure",
                                onChanged: (p0) {
                                  setState(() {
                                    i = p0!;
                                  });
                                },
                                data: data,
                              ),
                            ),
                            Expanded(
                              child: dropdown_widget(
                                value: j,
                                name: "Account Status",
                                onChanged: (p0) {
                                  setState(() {
                                    j = p0!;
                                  });
                                },
                                data: data1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: Colors.white,
                        child: Row(
                          children: [
                            Expanded(
                              child: dropdown_widget(
                                value: i,
                                name: "Balance Transfer (BT)",
                                onChanged: (p0) {
                                  setState(() {
                                    i = p0!;
                                  });
                                },
                                data: data,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3.h,),
                  Container(
                    color: Colors.black12,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Total Household Liability",
                              style: myTextStyllibility,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Own Liability",
                              style: myTextStyllibility,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Other Household Liability",
                              style: myTextStyllibility,
                            ),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // SizedBox(
                            //   width: 10,
                            // ),
                            Text(
                              "20000",
                              style:myTextStyleliability2,
                            ),
                            // SizedBox(
                            //   width: 20,
                            // ),
                            Text(
                              "2000",
                              style: myTextStyleliability2,
                            ),
                            // SizedBox(
                            //   width: 20,
                            // ),
                            Text(
                              "1000",
                              style: myTextStyleliability2,
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.deepPurpleAccent),
                            ),
                            child: TextButton(onPressed: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AddLiabilitymember(),));
                            }, child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                              Icon(Icons.add_alarm_outlined,color: kPrimaryColor,),
                              SizedBox(width: 10,),
                              Text("Add",style: TextStyle(color: kPrimaryColor))
                            ],)),
                          )
                      ),
                      Expanded(
                        child: ABButton(
                            paddingTop: MediaQuery.of(context).size.height * 0.0225,
                            paddingBottom: 15.0,
                            paddingLeft: 20.0,
                            paddingRight: 20.0,
                            text: 'Save & Next',
                            onPressed: () {
                              //Navigator.push(context, MaterialPageRoute(builder: (context) => HHexpenses(),));
                            }),
                      ),

                    ],
              ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
