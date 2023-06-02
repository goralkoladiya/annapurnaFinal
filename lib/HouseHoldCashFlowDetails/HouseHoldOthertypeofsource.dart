import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/constants.dart';
import '../components/dropdown_widget.dart';
import '../utils/strings.dart';
import '../utils/theme_config.dart';
import '../widgets/ab_button.dart';
import '../widgets/ab_text_input.dart';
import 'othertypeofsource2.dart';

class othertypeofsource extends StatefulWidget {
  const othertypeofsource({Key? key}) : super(key: key);

  @override
  State<othertypeofsource> createState() => _othertypeofsourceState();
}

class _othertypeofsourceState extends State<othertypeofsource> {
  List data=["Education","Freelancing","Job","Work"];
  String i="Education";
  TextEditingController _name=TextEditingController();
  TextEditingController _name2=TextEditingController();
  TextEditingController _relationship=TextEditingController();
  TextEditingController _relationship2=TextEditingController();
  TextEditingController _MonthlyIncome=TextEditingController();
  TextEditingController _MonthlyIncome2=TextEditingController();
  TextEditingController _annualincome=TextEditingController();
  TextEditingController _annualincome2=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                            Expanded(
                              child: ABTextInput(
                                autoValidator: AutovalidateMode.onUserInteraction,
                                titleText: Strings.MonthlyIncome,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter MonthlyIncome';
                                  }
                                  return null;
                                },
                                controller: _MonthlyIncome,
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
                              child: dropdown_widget(
                                value: i,
                                name: "Income Frequency",
                                onChanged: (p0) {
                                  setState(() {
                                    i=p0!;
                                  });
                                },
                                data: data,
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
                            Expanded(
                              child: ABTextInput(
                                autoValidator: AutovalidateMode.onUserInteraction,
                                titleText: Strings.MonthlyIncome,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter MonthlyIncome';
                                  }
                                  return null;
                                },
                                controller: _MonthlyIncome2,
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
                              child: dropdown_widget(
                                value: i,
                                name: "Income Frequency",
                                onChanged: (p0) {
                                  setState(() {
                                    i=p0!;
                                  });
                                },
                                data: data,
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
                  SizedBox(height: 10,),
                  ABButton(
                      paddingTop: MediaQuery.of(context).size.height * 0.0225,
                      paddingBottom: 15.0,
                      paddingLeft: 20.0,
                      paddingRight: 20.0,
                      text: 'Save & Next',
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => othertypeofsource2(),));
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
