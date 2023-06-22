
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../change_password/changePassword.dart';
import '../../../components/TextBtnWidget.dart';
import '../../../components/constants.dart';
import 'Double Side/AddDouble Side.dart';
import 'Single Side/Add Aadhar Card.dart';

class AadhaarCard extends StatefulWidget {
  AadhaarCard({Key? key}) : super(key: key);

  @override
  State<AadhaarCard> createState() => _AadhaarCardState();
}

class _AadhaarCardState extends State<AadhaarCard> {
  bool ocr = false , ekyc = false;
  bool verify = false ;
  int Aadhaar = 0;


  String side='';

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
            child: IconButton(
              color: black,
              onPressed: () {},
              icon: ImageIcon(
                AssetImage("assets/dasboardimg/Group 149.png"),
                color: Colors.black,
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
            child: PopupMenuButton(
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                size: 15,
                color: Colors.black,
              ),
              onSelected: (value) {
                switch (value) {
                  case 1:
                    Navigator.push(context, MaterialPageRoute(builder: (context) => changePassword(),));
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
        ],
      ),
      body: (Aadhaar==0) ? Column(
        children: [
          SizedBox(height:5.h),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    if (!ocr) {
                      ocr = !ocr;
                      ekyc = false;
                      print(ocr);
                      print(ekyc);
                      setState(() {});
                    }
                  },
                  child: Container(height: 15.h,width: 100.w,
                    margin: const EdgeInsets.all(5),alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: (ocr) ? kPrimarys : grey.shade100,
                        border: (ocr) ? Border.all(color: kPrimaryColor,) :  Border.all(color: grey,),
                        borderRadius: BorderRadius.circular(10)
                    ), child: Text("Aadhaar OCR",style: myTextstye.copyWith(fontSize: 16),),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    if (!ekyc) {
                      ekyc = !ekyc;
                      ocr = false;
                      print(ekyc);
                      print(ocr);
                      setState(() {});
                    }
                  },
                  child: Container(height: 15.h,width: 100.w,
                    margin: const EdgeInsets.all(5),alignment: Alignment.center,
                    decoration: BoxDecoration(color: (ekyc) ? kPrimarys : grey.shade100,
                        border: (ekyc) ? Border.all(color: kPrimaryColor,) :  Border.all(color: grey,),
                        borderRadius: BorderRadius.circular(10)
                    ),child: Text("Aadhaar EKYC",style: myTextstye.copyWith(fontSize: 16),),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height:5.h),
          Container(height: 20.h,width: 40.w,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/Layer_x0020_1.png"))
            ),
          ),
          SizedBox(height:5.h),

          (ocr || ekyc ) ? TextBtnWidget(name: "Proceed",
            onTap: () {
              Aadhaar=1;
              setState(() {});
            }
            ,) :
          TextBtnWidget(name: "Proceed",
            onTap: () {},btnColor: grey,
          ),
        ],
      )
          : Column(
        children: [
          Row(
            children: [
              Radio(value: "Single Side", groupValue: side, onChanged: (value) {
                setState(() {
                  side = value!;
                });
              },),
              Text("Single Side"),
              Spacer(),
              Radio(value: "Double Side", groupValue: side, onChanged: (value) {
                setState(() {
                  side = value!;
                });
              },),
              Text("Double Side"),
              Spacer(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(child:  Container(
                  decoration: (side=="Single Side") ? BoxDecoration(
                      border: Border.all(color: kPrimaryColor,width: 2),
                      borderRadius: BorderRadius.circular(26)
                  ) : const BoxDecoration(),
                  child: const Image(image: AssetImage("assets/adhaar/image 49.png")),
                ) ),
                SizedBox(width: 5.w,),
                Expanded(
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: (side=="Double Side") ? BoxDecoration(
                            border: Border.all(color: kPrimaryColor,width: 2),
                            borderRadius: BorderRadius.circular(20)
                        ) : const BoxDecoration(),
                        child: const Image(image: AssetImage("assets/adhaar/image 50.png")),
                      ),
                      SizedBox(height: 2.h,),
                      Container(
                        decoration: (side=="Double Side") ? BoxDecoration(
                            border: Border.all(color: kPrimaryColor,width: 2),
                            borderRadius: BorderRadius.circular(20)
                        ) : const BoxDecoration(),
                        child: const Image(image: AssetImage("assets/adhaar/image 51.png")),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height : 5.h),

          TextBtnWidget(
            name: "Open Camera",
            onTap: () {
              if (side=="Single Side") {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AddAadhaar(),));
              }
              else{
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Add2SAadhaar(),));
              }
            },
          )
        ],
      ),
    );
  }
}

