import 'package:annapurna225/HouseHoldCashFlowDetails/HHliability.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/TextBtnWidget.dart';
import '../components/constants.dart';
import '../utils/strings.dart';
import '../utils/theme_config.dart';
import '../widgets/ab_button.dart';
import '../widgets/ab_text_input.dart';

class irregular extends StatefulWidget {
  const irregular({Key? key}) : super(key: key);

  @override
  State<irregular> createState() => _irregularState();
}

class _irregularState extends State<irregular> {
  TextEditingController _MedicalHealth=TextEditingController();
  TextEditingController _HouseRenovation=TextEditingController();
  TextEditingController _Purchaseofhouseholdgoods=TextEditingController();
  TextEditingController _functions=TextEditingController();
  TextEditingController _Others=TextEditingController();
  TextEditingController _Education=TextEditingController();
  TextEditingController _TotalIrregularAnnually=TextEditingController();
  TextEditingController _TotalIrregularmonthly=TextEditingController();
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
              title: Text("Irregular Expenses (Monthly)"),
              children: [
                Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        child: ABTextInput(
                          autoValidator: AutovalidateMode.onUserInteraction,
                          titleText: Strings.MedicalHealth,
                          suffix:Icon(Icons.messenger_outline_outlined),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter MedicalHealth';
                            }
                            return null;
                          },
                          controller:_MedicalHealth,
                          hintText: "0",
                        ),
                      ),
                      Expanded(
                        child: ABTextInput(
                          autoValidator: AutovalidateMode.onUserInteraction,
                          titleText: Strings.HouseRenovation,
                          suffix:Icon(Icons.messenger_outline_outlined),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter HouseRenovation';
                            }
                            return null;
                          },
                          controller:_HouseRenovation,
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
                          titleText: Strings.Purchaseofhouseholdgoods,
                          suffix:Icon(Icons.messenger_outline_outlined),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Purchase of household goods';
                            }
                            return null;
                          },
                          controller:_Purchaseofhouseholdgoods,
                          hintText: "0",
                        ),
                      ),
                      Expanded(
                        child: ABTextInput(
                          autoValidator: AutovalidateMode.onUserInteraction,
                          titleText: Strings.functions,
                          suffix:Icon(Icons.messenger_outline_outlined),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter functon';
                            }
                            return null;
                          },
                          controller:_functions,
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
                          titleText: Strings.Education,
                          suffix:Icon(Icons.messenger_outline_outlined),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Education';
                            }
                            return null;
                          },
                          controller:_Education,
                          hintText: "0",
                        ),
                      ),
                      Expanded(
                        child: ABTextInput(
                          autoValidator: AutovalidateMode.onUserInteraction,
                          titleText: Strings.others,
                          suffix:Icon(Icons.messenger_outline_outlined),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Others';
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
                      Expanded(
                        child: ABTextInput(
                          autoValidator: AutovalidateMode.onUserInteraction,
                          titleText: Strings.TotalIrregularmonthly,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter TotalIrregularmonthly';
                            }
                            return null;
                          },
                          controller:_TotalIrregularmonthly,
                          hintText: "-",
                        ),
                      ),
                      Expanded(
                        child: ABTextInput(
                          autoValidator: AutovalidateMode.onUserInteraction,
                          titleText: Strings.TotalIrregularAnnually,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter TotalIrregularAnnually';
                            }
                            return null;
                          },
                          controller:_TotalIrregularAnnually,
                          hintText: "-",
                        ),
                      ),

                    ],
                  ),
                ),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HHliability(),));
                })
          ],
        ),
      ),
    );
  }
}
