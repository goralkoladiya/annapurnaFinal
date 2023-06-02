import 'package:annapurna225/components/TextBtnWidget.dart';
import 'package:annapurna225/components/constants.dart';
import 'package:annapurna225/components/dialog.dart';
import 'package:annapurna225/components/dropdown_widget.dart';
import 'package:annapurna225/newApplicationPage/earniMemberDetailsPage.dart';
import 'package:annapurna225/utils/strings.dart';
import 'package:annapurna225/utils/theme_config.dart';
import 'package:annapurna225/widgets/ab_text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CenterAddressPage extends StatefulWidget {
  const CenterAddressPage({Key? key}) : super(key: key);

  @override
  State<CenterAddressPage> createState() => _CenterAddressPageState();
}

class _CenterAddressPageState extends State<CenterAddressPage> {
  TextEditingController pinCodeController=TextEditingController();
  TextEditingController villageController=TextEditingController();
  TextEditingController centerController=TextEditingController();
  List data=["Select","Education","Freelancing","Job","Work"];
  String i="Select";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        actions: [
          Builder(builder: (context) =>
              Expanded(
                child: IconButton(
                  color: black,
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: ImageIcon(AssetImage("assets/dasboardimg/Hamburger.png")),
                ),
              ),
          ),
          Expanded(flex: 2,
            child: Image.asset(
              "assets/dasboardimg/image 3.png",
              width: 90,
            ),
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding,horizontal: defaultPadding),
            child: Container(
              height: 40.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  TextButton(onPressed: () {

                  }, child: Text("Basic details (Borrower)",style: myTextStyle100)),
                  TextButton(onPressed: () {

                  }, child: Text("Earning member details",style: myTextStyle100)),
                  TextButton(onPressed: () {

                  }, child: Text("Household details",style: myTextStyle100,))
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Container(
                    decoration: BoxDecoration(
                        color: gray,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    height: 20.h,
                    child: Padding(
                      padding: const EdgeInsets.only(left: defaultPadding),
                      child: Text("${Strings.centerAddress}",style: myTextStyle600),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: defaultPadding,),
          Row(
            children: [
              Expanded(child: ABTextInput(
                controller: pinCodeController,
                autoValidator: AutovalidateMode.onUserInteraction,
                titleText: Strings.pinCode,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Pincode';
                  }return null;
                },
                hintText: "Enter Pincode",
              ),),
              Expanded(child: ABTextInput(
                controller: villageController,
                suffix: Icon(Icons.search),
                autoValidator: AutovalidateMode.onUserInteraction,
                titleText: Strings.village,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter village';
                  }return null;
                },
                hintText: "Search",
              ),),
            ],
          ),
          Row(
            children: [
              Expanded(child: ABTextInput(
                controller: centerController,
                suffix: Icon(Icons.search),
                autoValidator: AutovalidateMode.onUserInteraction,
                titleText: Strings.center,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Center';
                  }return null;
                },
                hintText: "Search",
              ),),
              Expanded(child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Text("Available at Darkarng C1:2/15",style: myTextStyle600,),
              ))
            ],
          ),
          SizedBox(height: defaultPadding,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: defaultPadding),
                    child: Container(
                      height: 40.h,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: kPrimaryColor)
                        ),
                        onPressed: () {
                              showDialog(context: context, builder: (context) {
                                return Dialog(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                  child: SizedBox(
                                    height: 400.h,width: 100.w,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset('assets/chart.png'),
                                          Text("Add New Center"),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: dropdown_widget(
                                                value: i,
                                                name: "Center Meeting Day",
                                                onChanged: (p0) {
                                                  setState(() {
                                                    i=p0!;
                                                  });
                                                },
                                                data: data,
                                              ),
                                              ),
                                          ],
                                        ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: dropdown_widget(
                                                  value: i,
                                                  name: "Center Meeting Week",
                                                  onChanged: (p0) {
                                                    setState(() {
                                                      i=p0!;
                                                    });
                                                  },
                                                  data: data,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                                                  child: Container(
                                                    height: 40.h,
                                                    child: ElevatedButton(
                                                        style: ElevatedButton.styleFrom(
                                                            backgroundColor: kPrimaryColor
                                                        ),
                                                        onPressed: () {
                                                            Navigator.pop(context);
                                                        }, child: Text("Add",)),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },);
                        },
                        child: Text("Add New Center +",style: TextStyle(color: kPrimaryColor)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: defaultPadding),
                    child: Container(
                      height: 40.h,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kPrimaryColor
                          ),
                          onPressed: () {
                            myDiloag(context, "assets/Done.png", "Darkrang C2 Center Created Successfully!", "Okay", (){
                              Navigator.pop(context);
                              Navigator.push(context, MaterialPageRoute(builder: (context) => EarningMemberDetailsPage()));
                            });
                      }, child: Text("Submit",)),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
