import 'package:annapurna225/Screens/OCR%20Screen/Add%20Client/Add%20Client.dart';
import 'package:annapurna225/components/constants.dart';
import 'package:annapurna225/utils/theme_config.dart';
import 'package:annapurna225/widgets/ab_button.dart';
import 'package:annapurna225/widgets/ab_text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/dropdown_widget.dart';
import '../utils/strings.dart';
import 'HHexpenses.dart';

class HHMonthlyIncomePage extends StatefulWidget {
  const HHMonthlyIncomePage({Key? key}) : super(key: key);

  @override
  State<HHMonthlyIncomePage> createState() => _HHMonthlyIncomePageState();
}

class _HHMonthlyIncomePageState extends State<HHMonthlyIncomePage> {
  final _name = TextEditingController();
  final _relationship = TextEditingController();
  final _dailytransaction = TextEditingController();
  final _rawmaterials = TextEditingController();
  final _rentforshop = TextEditingController();
  final _noofdays = TextEditingController();
  final _monthlygrosssale = TextEditingController();
  final _labourwages = TextEditingController();
  final _electricity = TextEditingController();
  final _conveyancefuel = TextEditingController();
  final _othermanufacturing = TextEditingController();
  final _adminandoperating = TextEditingController();
  final _businessexpenses = TextEditingController();
  final _dailyexpenditure = TextEditingController();
  final _netprofit = TextEditingController();

  // final _incomefrequency = TextEditingController();
  final _netbusinessincome = TextEditingController();
  final _netbusinessincomemargin = TextEditingController();
  final _annualincome = TextEditingController();
  List typeofsource = ["business", "", ""];
  String Value = "business";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // color: Colors.blueGrey,
        child: Column(
          children: [
            ExpansionTile(
              backgroundColor: ThemeColor.expansioncolor,
              collapsedBackgroundColor: ThemeColor.expansioncolor,
              textColor: Colors.black87,
              title: Text(
                "Applicant",
              ),
              children: [
                Column(
                  children: [
                    Container(
                      color: white,
                      padding: EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.Name,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter name';
                                }
                                return null;
                              },
                              controller: _name,
                              hintText: Strings.Name,
                            ),
                          ),
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.Relationship,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter relationship';
                                }
                                return null;
                              },
                              controller: _relationship,
                              hintText: Strings.Relationship,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: white,
                      // padding: EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: dropdown_widget(name: 'Type of source',hint: "",filledColor:Colors.blue,data: typeofsource,value: Value,onChanged: (val){
                              setState(() {
                                Value = val!;
                              });
                      } ),
                          ),
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.dailyTransaction,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Avg.Daily Transaction';
                                }
                                return null;
                              },
                              controller: _relationship,
                              hintText: "0",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: white,
                      // padding: EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.noofdays,
                              //suffix: Icon(Icons.keyboard_arrow_down_sharp),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter number fo days';
                                }
                                return null;
                              },
                              controller: _noofdays,
                              hintText: "Enter days",
                            ),
                          ),
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.MonthlyGrossSale,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Monthly gross sale';
                                }
                                return null;
                              },
                              controller: _monthlygrosssale,
                              hintText: "-",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: white,
                      // padding: EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.Rawmaterials,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter rawmaterials';
                                }
                                return null;
                              },
                              controller: _rawmaterials,
                              hintText: "Enter",
                            ),
                          ),
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.rentforshop,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter monthly gross sale';
                                }
                                return null;
                              },
                              controller: _rentforshop,
                              hintText: "Enter",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: white,
                      // padding: EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.labour,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter labourwages';
                                }
                                return null;
                              },
                              controller: _labourwages,
                              hintText: Strings.enter,
                            ),
                          ),
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.electricity,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter monthly gross sale';
                                }
                                return null;
                              },
                              controller: _electricity,
                              hintText: Strings.enter,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: white,
                      // padding: EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.conveyance,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter conveyance';
                                }
                                return null;
                              },
                              controller: _conveyancefuel,
                              hintText: Strings.enter,
                            ),
                          ),
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.othermanufacturing,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter othermanufacturing';
                                }
                                return null;
                              },
                              controller: _othermanufacturing,
                              hintText: Strings.enter,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: white,
                      // padding: EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.admin,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter admin & operating';
                                }
                                return null;
                              },
                              controller: _adminandoperating,
                              hintText: Strings.enter,
                            ),
                          ),
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.businessexpenses,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter businessexpenses ';
                                }
                                return null;
                              },
                              controller: _businessexpenses,
                              hintText: "-",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: white,
                      // padding: EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: ABTextInput(
                                autoValidator:
                                    AutovalidateMode.onUserInteraction,
                                titleText: Strings.dailyexpenditure,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter dailyexpenditure';
                                  }
                                  return null;
                                },
                                controller: _dailyexpenditure,
                                hintText: "-"),
                          ),
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.profit,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter profit';
                                }
                                return null;
                              },
                              controller: _netprofit,
                              hintText: "-",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: white,
                      // padding: EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: dropdown_widget(name: 'Income frequancy',hint: "",filledColor:Colors.blue,data: typeofsource,value: Value,onChanged: (val){
                              setState(() {
                                Value = val!;
                              });
                            } ),
                          ),
                          // Expanded(
                          //   child: ABTextInput(
                          //     autoValidator: AutovalidateMode.onUserInteraction,
                          //     titleText: Strings.incomefrequency,
                          //     validator: (value) {
                          //       if (value == null || value.isEmpty) {
                          //         return 'Please enter income frequancy';
                          //       }
                          //       return null;
                          //     },
                          //     //controller: _typeofsource,
                          //     hintText: "Select",
                          //   ),
                          // ),
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.netbusinessincome,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter net business income monthly  ';
                                }
                                return null;
                              },
                              controller: _netbusinessincome,
                              hintText: "-",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: white,
                      // padding: EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.netbusinessincomemargin,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter business income (margin%)';
                                }
                                return null;
                              },
                              controller: _netbusinessincomemargin,
                              hintText: Strings.enter,
                            ),
                          ),
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.anuualincome,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter anuual income';
                                }
                                return null;
                              },
                              controller: _annualincome,
                              hintText: "-",
                            ),
                          ),
                        ],
                      ),
                    ),
                    ABButton(onPressed: () {

                    },text:Strings.addmore ,
                      paddingTop: 8.0,
                      paddingBottom: 15.0,
                      paddingLeft: 5.0,
                      paddingRight: 8.0,)
                  ],
                ),
              ],
            ),
            SizedBox(height: 10.h),
            ExpansionTile(
              backgroundColor: ThemeColor.expansioncolor,
              collapsedBackgroundColor: ThemeColor.expansioncolor,
              textColor: Colors.black87,
              title: Text(
                "Earning Member 2",
              ),
              children: [
                Column(
                  children: [
                    Container(
                      color: white,
                      padding: EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.Name,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter name';
                                }
                                return null;
                              },
                              controller: _name,
                              hintText: Strings.Name,
                            ),
                          ),
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.Relationship,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter relationship';
                                }
                                return null;
                              },
                              controller: _relationship,
                              hintText: Strings.Relationship,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: white,
                      // padding: EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: dropdown_widget(name: 'Type of source',hint: "",filledColor:Colors.blue,data: typeofsource,value: Value,onChanged: (val){
                              setState(() {
                                Value = val!;
                              });
                      } ),
                          ),
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.dailyTransaction,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Avg.Daily Transaction';
                                }
                                return null;
                              },
                              controller: _relationship,
                              hintText: "0",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: white,
                      // padding: EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.noofdays,
                              //suffix: Icon(Icons.keyboard_arrow_down_sharp),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter number fo days';
                                }
                                return null;
                              },
                              controller: _noofdays,
                              hintText: "Enter days",
                            ),
                          ),
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.MonthlyGrossSale,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Monthly gross sale';
                                }
                                return null;
                              },
                              controller: _monthlygrosssale,
                              hintText: "-",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: white,
                      // padding: EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.Rawmaterials,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter rawmaterials';
                                }
                                return null;
                              },
                              controller: _rawmaterials,
                              hintText: "Enter",
                            ),
                          ),
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.rentforshop,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter monthly gross sale';
                                }
                                return null;
                              },
                              controller: _rentforshop,
                              hintText: "Enter",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: white,
                      // padding: EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.labour,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter labourwages';
                                }
                                return null;
                              },
                              controller: _labourwages,
                              hintText: Strings.enter,
                            ),
                          ),
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.electricity,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter monthly gross sale';
                                }
                                return null;
                              },
                              controller: _electricity,
                              hintText: Strings.enter,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: white,
                      // padding: EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.conveyance,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter conveyance';
                                }
                                return null;
                              },
                              controller: _conveyancefuel,
                              hintText: Strings.enter,
                            ),
                          ),
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.othermanufacturing,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter othermanufacturing';
                                }
                                return null;
                              },
                              controller: _othermanufacturing,
                              hintText: Strings.enter,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: white,
                      // padding: EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.admin,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter admin & operating';
                                }
                                return null;
                              },
                              controller: _adminandoperating,
                              hintText: Strings.enter,
                            ),
                          ),
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.businessexpenses,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter businessexpenses ';
                                }
                                return null;
                              },
                              controller: _businessexpenses,
                              hintText: "-",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: white,
                      // padding: EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: ABTextInput(
                                autoValidator:
                                    AutovalidateMode.onUserInteraction,
                                titleText: Strings.dailyexpenditure,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter dailyexpenditure';
                                  }
                                  return null;
                                },
                                controller: _dailyexpenditure,
                                hintText: "-"),
                          ),
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.profit,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter profit';
                                }
                                return null;
                              },
                              controller: _netprofit,
                              hintText: "-",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: white,
                      // padding: EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: dropdown_widget(name: 'Income frequancy',hint: "",filledColor:Colors.blue,data: typeofsource,value: Value,onChanged: (val){
                              setState(() {
                                Value = val!;
                              });
                            } ),
                          ),
                          // Expanded(
                          //   child: ABTextInput(
                          //     autoValidator: AutovalidateMode.onUserInteraction,
                          //     titleText: Strings.incomefrequency,
                          //     validator: (value) {
                          //       if (value == null || value.isEmpty) {
                          //         return 'Please enter income frequancy';
                          //       }
                          //       return null;
                          //     },
                          //     //controller: _typeofsource,
                          //     hintText: "Select",
                          //   ),
                          // ),
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.netbusinessincome,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter net business income monthly  ';
                                }
                                return null;
                              },
                              controller: _netbusinessincome,
                              hintText: "-",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: white,
                      // padding: EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.netbusinessincomemargin,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter business income (margin%)';
                                }
                                return null;
                              },
                              controller: _netbusinessincomemargin,
                              hintText: Strings.enter,
                            ),
                          ),
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.anuualincome,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter anuual income';
                                }
                                return null;
                              },
                              controller: _annualincome,
                              hintText: "-",
                            ),
                          ),
                        ],
                      ),
                    ),
                    ABButton(onPressed: () {

                    },text:Strings.addmore ,
                      paddingTop: 8.0,
                      paddingBottom: 15.0,
                      paddingLeft: 5.0,
                      paddingRight: 8.0,)
                  ],
                ),
              ],
            ),

            ABButton(
              paddingTop: MediaQuery.of(context).size.height * 0.0225,
              paddingBottom: 15.0,
              paddingLeft: 20.0,
              paddingRight: 20.0,
              text: 'Save & Next',
              onPressed: () {
                // if (_formKey.currentState!.validate()) {
                //   FocusManager.instance.primaryFocus?.unfocus();
                //   ref.watch(authenticationProvider).loginAPI(
                //     context: context,
                //     userName: _userNameController.text,
                //     password: _passwordController.text,
                //   );
                // }
                // ref.watch(authenticationProvider).loginAPI(
                //   context: context,
                //   userName: _userNameController.text,
                //   password: _passwordController.text,
                // );
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HHexpenses(),
                    ));
              },
            )

            // ExpansionTile(
            //   initiallyExpanded: true,
            //   backgroundColor: Colors.blueGrey,
            //   textColor: Colors.black87,
            //   title: Text("Earning Member 2",),
            //   children: [
            //     Container(
            //       color: Colors.white,
            //       child: Column(
            //         children: [
            //           Padding(
            //             padding: EdgeInsets.symmetric(vertical: bheight*0.01),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //               children: [
            //                 Container(
            //                   width: twidth*0.48,
            //                   height: bheight*0.06,
            //                   child: TextField(
            //                     decoration: InputDecoration(
            //                         labelText: "Name",
            //                         labelStyle: TextStyle(fontSize: bheight*0.014),
            //                         border: OutlineInputBorder(
            //                         )
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(width: twidth*0.01,),
            //                 Container(
            //                   decoration: BoxDecoration(
            //                     color: Colors.transparent,
            //                   ),
            //                   width: twidth*0.48,
            //                   height: bheight*0.06,
            //                   child: TextField(
            //                     decoration: InputDecoration(
            //                         labelText: "Relationship",
            //                         labelStyle: TextStyle(fontSize: bheight*0.014),
            //                         border: OutlineInputBorder(
            //                         )
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //           Padding(
            //             padding: EdgeInsets.symmetric(vertical: bheight*0.01),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //               children: [
            //                 Container(
            //                   width: twidth*0.48,
            //                   height: bheight*0.06,
            //                   child: TextField(
            //                     decoration: InputDecoration(
            //                         labelText: "Type of Source",
            //                         labelStyle: TextStyle(fontSize: bheight*0.014),
            //                         border: OutlineInputBorder(
            //                         )
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(width: twidth*0.02,),
            //                 Container(
            //                   decoration: BoxDecoration(
            //                     color: Colors.transparent,
            //                   ),
            //                   width: twidth*0.48,
            //                   height: bheight*0.06,
            //                   child: TextField(
            //                     decoration: InputDecoration(
            //                         labelText: "Avg DailyTransaction",
            //                         labelStyle: TextStyle(fontSize: bheight*0.014),
            //                         border: OutlineInputBorder(
            //                         )
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //           Padding(
            //             padding: EdgeInsets.symmetric(vertical: bheight*0.01),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //               children: [
            //                 Container(
            //                   width: twidth*0.48,
            //                   height: bheight*0.06,
            //                   child: TextField(
            //                     decoration: InputDecoration(
            //                         labelText: "No Of Day in Month",
            //                         labelStyle: TextStyle(fontSize: bheight*0.014),
            //                         border: OutlineInputBorder(
            //                         )
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(width: twidth*0.02,),
            //                 Container(
            //                   decoration: BoxDecoration(
            //                     color: Colors.transparent,
            //                   ),
            //                   width: twidth*0.48,
            //                   height: bheight*0.06,
            //                   child: TextField(
            //                     decoration: InputDecoration(
            //                         labelText: "Monthly Gross Sale",
            //                         labelStyle: TextStyle(fontSize: bheight*0.014),
            //                         border: OutlineInputBorder(
            //                         )
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //           Padding(
            //             padding: EdgeInsets.symmetric(vertical: bheight*0.01),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //               children: [
            //                 Container(
            //                   width: twidth*0.48,
            //                   height: bheight*0.06,
            //                   child: TextField(
            //                     decoration: InputDecoration(
            //                         labelText: "Raw Materials Consume(Monthly)",
            //                         labelStyle: TextStyle(fontSize: bheight*0.0142),
            //                         border: OutlineInputBorder(
            //                         )
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(width: twidth*0.02,),
            //                 Container(
            //                   decoration: BoxDecoration(
            //                     color: Colors.transparent,
            //                   ),
            //                   width: twidth*0.48,
            //                   height: bheight*0.06,
            //                   child: TextField(
            //                     decoration: InputDecoration(
            //                         labelText: "Rent For Shop(Monthly)",
            //                         labelStyle: TextStyle(fontSize: bheight*0.014),
            //                         border: OutlineInputBorder(
            //                         )
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //           Padding(
            //             padding: EdgeInsets.symmetric(vertical: bheight*0.01),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //               children: [
            //                 Container(
            //                   width: twidth*0.48,
            //                   height: bheight*0.06,
            //                   child: TextField(
            //                     decoration: InputDecoration(
            //                         labelText: "Labour/wages(Monthly)",
            //                         labelStyle: TextStyle(fontSize: bheight*0.014),
            //                         border: OutlineInputBorder(
            //                         )
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(width: twidth*0.02,),
            //                 Container(
            //                   decoration: BoxDecoration(
            //                     color: Colors.transparent,
            //                   ),
            //                   width: twidth*0.48,
            //                   height: bheight*0.06,
            //                   child: TextField(
            //                     decoration: InputDecoration(
            //                         labelText: "Electricity(Monthly)",
            //                         labelStyle: TextStyle(fontSize: bheight*0.014),
            //                         border: OutlineInputBorder(
            //                         )
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //           Padding(
            //             padding: EdgeInsets.symmetric(vertical: bheight*0.01),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //               children: [
            //                 Container(
            //                   width: twidth*0.48,
            //                   height: bheight*0.06,
            //                   child: TextField(
            //                     decoration: InputDecoration(
            //                         labelText: "Conveyance-fuel/Maintenance(Monthly)",
            //                         hintText: "Enter",
            //                         labelStyle: TextStyle(fontSize: bheight*0.014),
            //                         border: OutlineInputBorder(
            //                         )
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(width: twidth*0.02,),
            //                 Container(
            //                   decoration: BoxDecoration(
            //                     color: Colors.transparent,
            //                   ),
            //                   width: twidth*0.48,
            //                   height: bheight*0.06,
            //                   child: TextField(
            //                     decoration: InputDecoration(
            //                         labelText: "Other Manufacturing(Monthly)",
            //                         labelStyle: TextStyle(fontSize: bheight*0.014),
            //                         border: OutlineInputBorder(
            //                         )
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //           Padding(
            //             padding: EdgeInsets.symmetric(vertical: bheight*0.01),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //               children: [
            //                 Container(
            //                   width: twidth*0.48,
            //                   height: bheight*0.06,
            //                   child: TextField(
            //                     decoration: InputDecoration(
            //                         labelText: "Admin And Operating Expenses(Monthly)",
            //                         labelStyle: TextStyle(fontSize: bheight*0.012),
            //                         border: OutlineInputBorder(
            //                         )
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(width: twidth*0.02,),
            //                 Container(
            //                   decoration: BoxDecoration(
            //                     color: Colors.transparent,
            //                   ),
            //                   width: twidth*0.48,
            //                   height: bheight*0.06,
            //                   child: TextField(
            //                     decoration: InputDecoration(
            //                         labelText: "Total Business Expenses(Monthly)",
            //                         labelStyle: TextStyle(fontSize: bheight*0.012),
            //                         border: OutlineInputBorder(
            //                         )
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //           Padding(
            //             padding: EdgeInsets.symmetric(vertical: bheight*0.01),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //               children: [
            //                 Container(
            //                   width: twidth*0.48,
            //                   height: bheight*0.06,
            //                   child: TextField(
            //                     decoration: InputDecoration(
            //                         labelText: "Avg.Daily Expenditure",
            //                         labelStyle: TextStyle(fontSize: bheight*0.014),
            //                         border: OutlineInputBorder(
            //                         )
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(width: twidth*0.02,),
            //                 Container(
            //                   decoration: BoxDecoration(
            //                     color: Colors.transparent,
            //                   ),
            //                   width: twidth*0.48,
            //                   height: bheight*0.06,
            //                   child: TextField(
            //                     decoration: InputDecoration(
            //                         labelText: "Avg.Net Profit Daily",
            //                         labelStyle: TextStyle(fontSize: bheight*0.014),
            //                         border: OutlineInputBorder(
            //                         )
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //           Padding(
            //             padding: EdgeInsets.symmetric(vertical: bheight*0.01),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //               children: [
            //                 Container(
            //                   width: twidth*0.48,
            //                   height: bheight*0.06,
            //                   child: TextField(
            //                     decoration: InputDecoration(
            //                         labelText: "Income Frequency",
            //                         labelStyle: TextStyle(fontSize: bheight*0.014),
            //                         border: OutlineInputBorder(
            //                         )
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(width: twidth*0.02,),
            //                 Container(
            //                   decoration: BoxDecoration(
            //                     color: Colors.transparent,
            //                   ),
            //                   width: twidth*0.48,
            //                   height: bheight*0.06,
            //                   child: TextField(
            //                     decoration: InputDecoration(
            //                         labelText: "Net Business Income Monthly",
            //                         labelStyle: TextStyle(fontSize: bheight*0.012),
            //                         border: OutlineInputBorder(
            //                         )
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //           Padding(
            //             padding: EdgeInsets.symmetric(vertical: bheight*0.01),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //               children: [
            //                 Container(
            //                   width: twidth*0.48,
            //                   height: bheight*0.06,
            //                   child: TextField(
            //                     decoration: InputDecoration(
            //                         labelText: "Net Income Monthly(Margin%)",
            //                         labelStyle: TextStyle(fontSize: bheight*0.0125),
            //                         border: OutlineInputBorder(
            //                         )
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(width: twidth*0.02,),
            //                 Container(
            //                   decoration: BoxDecoration(
            //                     color: Colors.transparent,
            //                   ),
            //                   width: twidth*0.48,
            //                   height: bheight*0.06,
            //                   child: TextField(
            //                     decoration: InputDecoration(
            //                       labelText: "Annual Income",
            //                       labelStyle: TextStyle(fontSize: bheight*0.013),
            //                       border: OutlineInputBorder(
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //           Row(
            //             mainAxisAlignment: MainAxisAlignment.end,
            //             children: [
            //               Container(
            //                 width: twidth*0.48,
            //                 height: bheight*0.06,
            //                 child: TextField(
            //                   decoration: InputDecoration(
            //                       labelText: "Add More Income+",
            //                       labelStyle: TextStyle(fontSize: bheight*0.018),
            //                       border: OutlineInputBorder(
            //                       )
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
