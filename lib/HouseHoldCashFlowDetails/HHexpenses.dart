import 'package:annapurna225/components/TextBtnWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/constants.dart';
import '../utils/strings.dart';
import '../utils/theme_config.dart';
import '../widgets/ab_button.dart';
import '../widgets/ab_text_input.dart';
import 'irregular.dart';

class HHexpenses extends StatefulWidget {
  const HHexpenses({Key? key}) : super(key: key);

  @override
  State<HHexpenses> createState() => _HHexpensesState();
}

class _HHexpensesState extends State<HHexpenses> {
  TextEditingController _Accommodati=TextEditingController();
  TextEditingController _Food=TextEditingController();
  TextEditingController _Clothes=TextEditingController();
  TextEditingController _EducationExpensesothes=TextEditingController();
  TextEditingController _RegularMedicalCosts=TextEditingController();
  TextEditingController Electricity=TextEditingController();
  TextEditingController _Entertainmentsocialobligations=TextEditingController();
  TextEditingController _Transport=TextEditingController();
  TextEditingController _Saving=TextEditingController();
  TextEditingController _Others=TextEditingController();
  TextEditingController _TotalRegularExpenses=TextEditingController();
  TextEditingController _AddRemarks=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
      body: SingleChildScrollView(
        child: Column(
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
                ExpansionTile(
                  backgroundColor: ThemeColor.expansioncolor,
                  collapsedBackgroundColor: ThemeColor.expansioncolor,
                  textColor: Colors.black87,
                  title: Text("Regular Expenses (Monthly)"),
                  children: [
                    Container(
                      color: Colors.white,
                      child: Row(
                        children: [
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.Accommodation,
                              suffix:Icon(Icons.messenger_outline_outlined),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Accommodation';
                                }
                                return null;
                              },
                              controller:_Accommodati,
                              hintText: "0",
                            ),
                          ),
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.Food,
                              suffix:Icon(Icons.messenger_outline_outlined),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Food + Cooking Fuel';
                                }
                                return null;
                              },
                              controller:_Food,
                              hintText:"0",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: Row(
                        children: [
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.Clothes,
                              suffix:Icon(Icons.messenger_outline_outlined),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Clothes';
                                }
                                return null;
                              },
                              controller:_Clothes,
                              hintText: "0",
                            ),
                          ),
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.EducationExpensesothes,
                              suffix:Icon(Icons.messenger_outline_outlined),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter EducationExpensesothes';
                                }
                                return null;
                              },
                              controller:_EducationExpensesothes,
                              hintText:"0",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color:Colors.white,
                      child: Row(
                        children: [
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.Electricity,
                              suffix:Icon(Icons.messenger_outline_outlined),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Electricity';
                                }
                                return null;
                              },
                              controller:Electricity,
                              hintText: "0",
                            ),
                          ),
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.RegularMedicalCosts,
                              suffix:Icon(Icons.messenger_outline_outlined),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter RegularMedicalCosts';
                                }
                                return null;
                              },
                              controller:_RegularMedicalCosts,
                              hintText:"0",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: Row(
                        children: [
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.Transport,
                              suffix:Icon(Icons.messenger_outline_outlined),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Transport';
                                }
                                return null;
                              },
                              controller:_Transport,
                              hintText:"0",
                            ),
                          ),
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.Entertainmentsocialobligations,
                              suffix:Icon(Icons.messenger_outline_outlined),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Entertainment/social obligations';
                                }
                                return null;
                              },
                              controller:_Entertainmentsocialobligations,
                              hintText: "0",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: Row(
                        children: [
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.Saving,
                              suffix:Icon(Icons.messenger_outline_outlined),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Saving';
                                }
                                return null;
                              },
                              controller:_Saving,
                              hintText: "0",
                            ),
                          ),
                          Expanded(
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.Others,
                              suffix:Icon(Icons.messenger_outline_outlined),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Others';
                                }
                                return null;
                              },
                              controller:_Others,
                              hintText:"0",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width:180,
                            child: ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: Strings.TotalRegularExpenses,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Saving';
                                }
                                return null;
                              },
                              controller:_TotalRegularExpenses,
                              hintText: "-",
                            ),
                          ),

                        ],
                      ),
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
                     showDialog(context: context, builder: (context){
                       return AlertDialog(
                         title: Text(Strings.Accommodation),
                         actions: [
                           TextField(
                             maxLines: 5,
                             decoration: InputDecoration(
                               hintText: "Add Remark",
                               enabledBorder: OutlineInputBorder(
                                   borderSide: BorderSide(
                                       color: Colors.black54
                                   )
                               ),
                               focusedBorder: OutlineInputBorder(
                                   borderSide: BorderSide(
                                       color: Colors.black54
                                   )
                               ),
                             ),
                           ),
                           ABButton(
                               paddingTop: MediaQuery.of(context).size.height * 0.0225,
                               paddingBottom: 15.0,
                               paddingLeft: 20.0,
                               paddingRight: 20.0,
                               text: 'Submit',
                               onPressed: () {
                                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                                   return irregular();
                                 },));
                               }),
                           TextBtnWidget(onTap: (){
                             Navigator.pop(context);
                           },name: "Cancel",btnColor: Color.fromRGBO(219,222,227,1),textColor: Color.fromRGBO(68,36,119,1),)
                         ],
                       );
                     },);
                    })
              ],
            ),
      ),
    );
  }
}
