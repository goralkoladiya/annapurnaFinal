import 'package:annapurna225/HouseHoldCashFlowDetails/othertypeofsource4.dart';
import 'package:flutter/material.dart';

import '../components/constants.dart';
import '../components/dropdown_widget.dart';
import '../utils/strings.dart';
import '../utils/theme_config.dart';
import '../widgets/ab_button.dart';
import '../widgets/ab_text_input.dart';

class othertypeofsource3 extends StatefulWidget {
  const othertypeofsource3({Key? key}) : super(key: key);

  @override
  State<othertypeofsource3> createState() => _othertypeofsource3State();
}

class _othertypeofsource3State extends State<othertypeofsource3> {
  List data=["Education","Freelancing","Job","Work"];
  String i="Education";
  TextEditingController _name=TextEditingController();
  TextEditingController _name2=TextEditingController();
  TextEditingController _relationship=TextEditingController();
  TextEditingController _relationship2=TextEditingController();
  TextEditingController _Totalmilkinganimal=TextEditingController();
  TextEditingController _Totalmilkinganimal2=TextEditingController();
  TextEditingController _TotalAvgmilkProduction=TextEditingController();
  TextEditingController _TotalAvgmilkProduction2=TextEditingController();
  TextEditingController _Marketablesurplus=TextEditingController();
  TextEditingController _Marketablesurplus2=TextEditingController();
  TextEditingController _Ratemilksold=TextEditingController();
  TextEditingController _Ratemilksold2=TextEditingController();
  TextEditingController _TotalIncomemonthly=TextEditingController();
  TextEditingController _TotalIncomemonthly2=TextEditingController();
  TextEditingController _TotalIncome=TextEditingController();
  TextEditingController _TotalIncome2=TextEditingController();
  TextEditingController _TotalExpendituremonthly=TextEditingController();
  TextEditingController _TotalExpendituremonthly2=TextEditingController();
  TextEditingController _NetDairyIncomeMonthly=TextEditingController();
  TextEditingController _NetDairyIncomeMonthly2=TextEditingController();
  TextEditingController _annualincome=TextEditingController();
  TextEditingController _annualincome2=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Row(children: [
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
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ExpansionTile(title: Text("Applicant"),
                    backgroundColor: ThemeColor.expansioncolor,
                    collapsedBackgroundColor: ThemeColor.expansioncolor,
                    textColor: black,
                    children: [

                      Container(
                        color: white,
                        //padding: EdgeInsets.symmetric(vertical: defaultPadding),
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
                            Expanded(child: dropdown_widget(
                              value: i,
                              name: "Type of source",
                              onChanged: (p0) {
                                setState(() {
                                  i=p0!;
                                });
                              },
                              data: data,
                            ),),
                            Expanded(child: dropdown_widget(
                              value: i,
                              name: "Name of the Animal",
                              onChanged: (p0) {
                                setState(() {
                                  i=p0!;
                                });
                              },
                              data: data,
                            ),),
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
                                  titleText: Strings.Totalmilkinganimal,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter Total milking animal';
                                    }
                                    return null;
                                  },
                                  controller: _Totalmilkinganimal,
                                  hintText: "0"),
                            ),
                            Expanded(
                              child: ABTextInput(
                                autoValidator: AutovalidateMode.onUserInteraction,
                                titleText: Strings.TotalAvgmilkProduction,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter Total Avg. milk production per day (in Ltr)';
                                  }
                                  return null;
                                },
                                controller: _TotalAvgmilkProduction,
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
                                titleText: Strings.Marketablesurplus,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter Marketable surplus per day (In Ltr)';
                                  }
                                  return null;
                                },
                                controller: _Marketablesurplus,
                                hintText: "0",
                              ),
                            ),
                            Expanded(
                              child: ABTextInput(
                                autoValidator: AutovalidateMode.onUserInteraction,
                                titleText: Strings.Ratemilksold,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter Rate at which milk is sold';
                                  }
                                  return null;
                                },
                                controller: _Ratemilksold,
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 180,
                              child: Expanded(
                                child: ABTextInput(
                                  autoValidator: AutovalidateMode.onUserInteraction,
                                  titleText: Strings.TotalIncomemonthly,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter Total Income monthly';
                                    }
                                    return null;
                                  },
                                  controller: _TotalIncomemonthly,
                                  hintText: "-",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: white,
                        // padding: EdgeInsets.symmetric(vertical: defaultPadding),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Expanded(
                                child: ABTextInput(
                                  autoValidator: AutovalidateMode.onUserInteraction,
                                  titleText: Strings.TotalExpendituremonthly,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter Total Expenditure monthly(Feeder & Medicine)';
                                    }
                                    return null;
                                  },
                                  controller: _TotalExpendituremonthly,
                                  hintText: "0",
                                ),
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
                            Expanded(child: dropdown_widget(
                              value: i,
                              name: "Type of source",
                              onChanged: (p0) {
                                setState(() {
                                  i=p0!;
                                });
                              },
                              data: data,
                            ),),
                            Expanded(
                              child: ABTextInput(
                                autoValidator: AutovalidateMode.onUserInteraction,
                                titleText: Strings.TotalIncome,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter Total Income (For Value Added Product) ';
                                  }
                                  return null;
                                },
                                controller: _TotalIncome,
                                hintText: "0"
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
                                titleText: Strings.NetDairyIncomeMonthly,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter Net Dairy Income Monthly';
                                  }
                                  return null;
                                },
                                controller: _NetDairyIncomeMonthly,
                                hintText: "-",
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
                  SizedBox(height: 15,),
                  ExpansionTile(title: Text("Earning Member 2"),
                    backgroundColor: ThemeColor.expansioncolor,
                    collapsedBackgroundColor: ThemeColor.expansioncolor,
                    textColor: black,
                    children: [

                      Container(
                        color: white,
                        //padding: EdgeInsets.symmetric(vertical: defaultPadding),
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
                                controller: _name2,
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
                                controller: _relationship2,
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
                            Expanded(child: dropdown_widget(
                              value: i,
                              name: "Type of source",
                              onChanged: (p0) {
                                setState(() {
                                  i=p0!;
                                });
                              },
                              data: data,
                            ),),
                            Expanded(child: dropdown_widget(
                              value: i,
                              name: "Name of the Animal",
                              onChanged: (p0) {
                                setState(() {
                                  i=p0!;
                                });
                              },
                              data: data,
                            ),),
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
                                  titleText: Strings.Totalmilkinganimal,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter Total milking animal';
                                    }
                                    return null;
                                  },
                                  controller: _Totalmilkinganimal2,
                                  hintText: "0"),
                            ),
                            Expanded(
                              child: ABTextInput(
                                autoValidator: AutovalidateMode.onUserInteraction,
                                titleText: Strings.TotalAvgmilkProduction,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter Total Avg. milk production per day (in Ltr)';
                                  }
                                  return null;
                                },
                                controller: _TotalAvgmilkProduction2,
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
                                titleText: Strings.Marketablesurplus,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter Marketable surplus per day (In Ltr)';
                                  }
                                  return null;
                                },
                                controller: _Marketablesurplus2,
                                hintText: "0",
                              ),
                            ),
                            Expanded(
                              child: ABTextInput(
                                autoValidator: AutovalidateMode.onUserInteraction,
                                titleText: Strings.Ratemilksold,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter Rate at which milk is sold';
                                  }
                                  return null;
                                },
                                controller: _Ratemilksold2,
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 180,
                              child: Expanded(
                                child: ABTextInput(
                                  autoValidator: AutovalidateMode.onUserInteraction,
                                  titleText: Strings.TotalIncomemonthly,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter Total Income monthly';
                                    }
                                    return null;
                                  },
                                  controller: _TotalIncomemonthly2,
                                  hintText: "-",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: white,
                        // padding: EdgeInsets.symmetric(vertical: defaultPadding),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Expanded(
                                child: ABTextInput(
                                  autoValidator: AutovalidateMode.onUserInteraction,
                                  titleText: Strings.TotalExpendituremonthly,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter Total Expenditure monthly(Feeder & Medicine)';
                                    }
                                    return null;
                                  },
                                  controller: _TotalExpendituremonthly2,
                                  hintText: "0",
                                ),
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
                            Expanded(child: dropdown_widget(
                              value: i,
                              name: "Type of source",
                              onChanged: (p0) {
                                setState(() {
                                  i=p0!;
                                });
                              },
                              data: data,
                            ),),
                            Expanded(
                              child: ABTextInput(
                                  autoValidator: AutovalidateMode.onUserInteraction,
                                  titleText: Strings.TotalIncome,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter Total Income (For Value Added Product) ';
                                    }
                                    return null;
                                  },
                                  controller: _TotalIncome2,
                                  hintText: "0"
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
                                titleText: Strings.NetDairyIncomeMonthly,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter Net Dairy Income Monthly';
                                  }
                                  return null;
                                },
                                controller: _NetDairyIncomeMonthly2,
                                hintText: "-",
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
                                controller: _annualincome2,
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
                  SizedBox(height: 15,),
                  ABButton(
                      paddingTop: MediaQuery.of(context).size.height * 0.0225,
                      paddingBottom: 15.0,
                      paddingLeft: 20.0,
                      paddingRight: 20.0,
                      text: 'Save & Next',
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => othertypeofsource4(),));
                      }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
