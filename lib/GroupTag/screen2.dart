import 'package:annapurna225/components/constants.dart';
import 'package:annapurna225/utils/theme_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/TextBtnWidget.dart';
import '../components/dropdown_widget.dart';
import '../utils/strings.dart';
import '../widgets/ab_text_input.dart';

class screen2 extends StatefulWidget {
  const screen2({Key? key}) : super(key: key);

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  List data=["Select","Yes","No","Work"];
  String i="Select";
  TextEditingController _GrtDate=TextEditingController();
  TextEditingController _CgtDate=TextEditingController();
  TextEditingController _ApprovedLoanAmount=TextEditingController();
  TextEditingController _PDScore=TextEditingController();
  TextEditingController _FCOName=TextEditingController();
  TextEditingController _VerifiedBy=TextEditingController();
  TextEditingController _Remarks=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        title: Text("GRT",overflow: TextOverflow.ellipsis,style: TextStyle(color: black),),
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
          Card(
            elevation: 20,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Total Members in the group",style: myTextStyllibility,),
                        Text("Total Members in the group",style: myTextStyllibility,)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("5",style: myTextStyleliability2,),
                        Text("5000",style: myTextStyleliability2,)
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 21),
                          child: Text("Total BM Recommended Amount",style: myTextStyllibility,),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 70),
                          child: Text("5000",style: myTextStyleliability2,),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: ABTextInput(
                          autoValidator: AutovalidateMode.onUserInteraction,
                          titleText: Strings.GRTDate,
                          suffix: Icon(Icons.calendar_month_outlined,color: kPrimaryColor,),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter GRT Date';
                            }
                            return null;
                          },
                          controller: _GrtDate,
                          hintText: "-",
                        ),
                      ),
                      Expanded(
                        child: ABTextInput(
                          autoValidator: AutovalidateMode.onUserInteraction,
                          titleText: Strings.CGTDate,
                          suffix: Icon(Icons.calendar_month_outlined,color: kPrimaryColor,),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter CGT Date';
                            }
                            return null;
                          },
                          controller: _CgtDate,
                          hintText: "-",
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ABTextInput(
                          autoValidator: AutovalidateMode.onUserInteraction,
                          titleText:Strings.ApprovedLoanAmount ,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter ApprovedLoanAmount';
                            }
                            return null;
                          },
                          controller: _ApprovedLoanAmount,
                          hintText: "1000",
                        ),
                      ),
                      Expanded(
                        child: ABTextInput(
                          autoValidator: AutovalidateMode.onUserInteraction,
                          titleText:Strings.PDScore,

                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter PD Score';
                            }
                            return null;
                          },
                          controller: _PDScore,
                          hintText: "-",
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ABTextInput(
                          autoValidator: AutovalidateMode.onUserInteraction,
                          titleText:Strings.FCOName ,

                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter FCOName';
                            }
                            return null;
                          },
                          controller: _FCOName,
                          hintText: "Vivek",
                        ),
                      ),
                      Expanded(child: dropdown_widget(
                        value: i,
                        name: Strings.GRTStatus,
                        onChanged: (p0) {
                          setState(() {
                            i=p0!;
                          });
                        },
                        data: data,
                      ),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 180,
                        child: ABTextInput(
                          autoValidator: AutovalidateMode.onUserInteraction,
                          titleText:Strings.VerifiedBy ,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter VerifiedBy';
                            }
                            return null;
                          },
                          controller: _VerifiedBy,
                          hintText: "Rajesh",
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ABTextInput(
                          autoValidator: AutovalidateMode.onUserInteraction,
                          titleText:Strings.Remarks ,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Remarks';
                            }
                            return null;
                          },
                          controller: _Remarks,
                          hintText: "Enter Remark",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Group Photo",),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal:5),
                    width: double.infinity,
                    height:180,
                    decoration:BoxDecoration(
                        color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ) ,
                  ),
                  SizedBox(height: 10,),
                  ExpansionTile(title: Row(
                    children: [
                      Icon(Icons.add_box_outlined,color: black,),
                      SizedBox(width: 10,),
                      Text("Add PPI questions"),
                    ],
                  ),
                  backgroundColor: ThemeColor.expansioncolor,
                  collapsedBackgroundColor: ThemeColor.expansioncolor,
                  textColor: black,
                    iconColor: black,
                    children: [
                      Container(
                        color:Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              Expanded(child: dropdown_widget(
                                value: i,
                                name: Strings.SelectAMember,
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
                      ),
                      Container(
                        color:Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              Expanded(child: dropdown_widget(
                                value: i,
                                name: Strings.howmanymemberinhousehold,
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
                      ),
                      Container(
                        color:Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              Expanded(child: dropdown_widget(
                                value: i,
                                name: Strings.whatisthegeneraleducation,
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
                      ),
                      Container(
                        color:Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              Expanded(child: dropdown_widget(
                                value: i,
                                name: Strings.Doesthehouseholdprocessarefrigerator,
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
                      ),
                      Container(
                        color:Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              Expanded(child: dropdown_widget(
                                value: i,
                                name: Strings.Doesthehouseholdprocessastove,
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
                      ),
                      Container(
                        color:Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              Expanded(child: dropdown_widget(
                                value: i,
                                name: Strings.Doesthehouseholdprocessapressurecooker,
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
                      ),
                      Container(
                        color:Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              Expanded(child: dropdown_widget(
                                value: i,
                                name: Strings.Doesthehouseholdpossessatelevision,
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
                      ),
                      Container(
                        color:Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              Expanded(child: dropdown_widget(
                                value: i,
                                name: Strings.Doesthehouseholdpossessaelectric,
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
                      ),
                      Container(
                        color:Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              Expanded(child: dropdown_widget(
                                value: i,
                                name: Strings.Doesthehouseholdpossessaalmirah,
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
                      ),
                      Container(
                        color:Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              Expanded(child: dropdown_widget(
                                value: i,
                                name: Strings.Doesthehouseholdpossessachair,
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
                      ),
                      Container(
                        color:Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              Expanded(child: dropdown_widget(
                                value: i,
                                name: Strings.Doesthehouseholdpossessamotorcycle,
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
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
