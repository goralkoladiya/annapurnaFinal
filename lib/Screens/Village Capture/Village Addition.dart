import 'package:annapurna225/widgets/ab_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../components/TextBtnWidget.dart';
import '../../components/TextFieldWidget.dart';
import '../../components/constants.dart';
import '../../components/dialog.dart';
import 'New Village Request.dart';

class VillageAdd extends StatefulWidget {
  const VillageAdd({Key? key}) : super(key: key);

  @override
  State<VillageAdd> createState() => _VillageAddState();
}

class _VillageAddState extends State<VillageAdd> {
  TextEditingController district = TextEditingController();
  TextEditingController block = TextEditingController();
  TextEditingController village = TextEditingController();
  TextEditingController gramPan = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        actions: [
          SizedBox(width: 1.h,),
          Expanded(flex: 4,
              child: Center(child: Text("Village Addition",style: myTextstye1.copyWith(fontWeight: FontWeight.bold,fontSize: 13),))
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
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 2.h,),

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: TextFieldWidget(
                    isRequired: false, controller: block,filledColor: fillTextColor,
                    name: 'Pincode',
                  )),
                  Expanded(child: TextFieldWidget(
                    isRequired: false, controller: block,filledColor: fillTextColor,
                    name: 'State',
                  ))
                ],
              ),
              SizedBox(height: 2.h,),

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: TextFieldWidget(
                    isRequired: false, controller: district,
                    name: 'District',myIcon: Icons.search,onIconPres: (){},
                  )),
                  Expanded(child: TextFieldWidget(
                    isRequired: false, controller: block,
                    name: 'Block',myIcon: Icons.search,onIconPres: (){},
                  ))
                ],
              ),
              SizedBox(height: 2.h,),

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: TextFieldWidget(
                    isRequired: false, controller: gramPan,
                    name: 'Gram Panchayat',myIcon: Icons.search,onIconPres: (){},
                  )),
                  Expanded(child: TextFieldWidget(
                    isRequired: false, controller: village,
                    name: 'Village',myIcon: Icons.search,onIconPres: (){},
                  ))
                ],
              ),
              SizedBox(height: 2.h,),

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: TextFieldWidget(
                    isRequired: false, controller: district,
                    name: 'Village census code',
                  )),
                  Expanded(child: Container())
                ],
              ),
              SizedBox(height: 2.h,),

              TextFieldWidget(
                isRequired: false, controller: district,
                name: 'Address',
              ),
              SizedBox(height: 2.h,),

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: TextFieldWidget(
                    isRequired: false, controller: block,filledColor: fillTextColor,
                    name: 'Latitude, Longitude',
                  )),
                  Expanded(child: TextFieldWidget(
                    isRequired: false, controller: block,filledColor: fillTextColor,
                    name: 'Distance from Branch',
                  ))
                ],
              ),
              SizedBox(height: 2.h,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: TextFieldWidget(
                    isRequired: false, controller: block,filledColor: fillTextColor,
                    name: 'Employee Name',
                  )),
                  Expanded(child: TextFieldWidget(
                    isRequired: false, controller: block,filledColor: fillTextColor,
                    name: 'Employee ID',
                  ))
                ],
              ),
              SizedBox(height: 2.h,),

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: TextFieldWidget(
                    isRequired: false, controller: block,filledColor: fillTextColor,
                    name: 'Name of Zone',
                  )),
                  Expanded(child: TextFieldWidget(
                    isRequired: false, controller: block,filledColor: fillTextColor,
                    name: 'Contact No',
                  ))
                ],
              ),
              SizedBox(height: 2.h,),
              Row(
                children: [
                  Expanded(flex: 2,
                    child: ABButton(
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                            return NewVillageReq();
                          },));
                        },
                        paddingTop: 8.0,
                        paddingBottom: 15.0,
                        paddingLeft: 5.0,
                        paddingRight: 5.0,btnColor: Colors.white,textColor: kPrimaryColor,
                    text: "New Village Request"),
                  ),

                  Expanded(
                    child: ABButton(
                        onPressed: () {
                          myDiloag(context, "assets/Done.png", "New Village allocate request sent Successfully!", "Okay",
                                  boxheight: 32,(){});
                        },
                        paddingTop: 8.0,
                        paddingBottom: 15.0,
                        paddingLeft: 5.0,
                        paddingRight: 5.0,
                        text: "Allocate"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
