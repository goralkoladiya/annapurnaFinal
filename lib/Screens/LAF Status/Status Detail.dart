import 'package:annapurna225/components/dialog.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../components/TextBtnWidget.dart';
import '../../components/constants.dart';
import '../../components/dropdown_widget.dart';
import '../../widgets/ab_button.dart';

class StatusDetail extends StatefulWidget {
  const StatusDetail({Key? key}) : super(key: key);

  @override
  State<StatusDetail> createState() => _StatusDetailState();
}

class _StatusDetailState extends State<StatusDetail> {
  List Report = [
    "Voter ID",
    "Aadhaar Card",
    "Other",
  ];
  String ? report;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        actions: [
          Expanded(flex: 4,
              child: Center(child: Text("Pending Status Detail",style: myTextstye1.copyWith(fontWeight: FontWeight.bold,fontSize: 13),))
          ),
          SizedBox(width: 40),
          Expanded(
            child: IconButton(
                color: black,
                onPressed: () {},
                icon: ImageIcon(size: 15,AssetImage("assets/dasboardimg/Group 148.png"))),
          ),
          Expanded(
            child: PopupMenuButton(
              icon: const ImageIcon(size: 15,
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
              icon: ImageIcon(size: 15,AssetImage("assets/dasboardimg/Group 150.png"),
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
                "Vivek s. ▼",
                style: myTextstye1.copyWith(fontSize: 14),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 6,
                child: Container(
                  height: 7.h,margin: EdgeInsets.fromLTRB(10,10,0,10),
                  decoration: BoxDecoration(
                      color: luccolor, borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Voter ID",
                        style: myTextStyle500.copyWith(color: lucTextColor),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 5.h,padding: EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: luccolorDark,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "ABC1245",
                          style: myTextStyle700.copyWith(
                              fontSize: 15, color: black),
                        ),
                      )
                    ],
                  ),
                ),
              ),
             
              Expanded(
                flex: 3,
                child: Container(
                  height: 7.h,margin: EdgeInsets.all(10),padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: luccolor, borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 18,
                        child: Icon(
                          Icons.search_rounded,
                          size: 18,
                        ),
                        backgroundColor: kPrimaryColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Search",
                        style: myTextStyle700.copyWith(
                          fontSize: 12,
                          decoration: TextDecoration.underline,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Card(elevation: 3,
            child: Column(
              children: [
                Container(margin: EdgeInsets.fromLTRB(10,10,10,0),padding: EdgeInsets.all(10),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Application No",style: myTextStyle600a.copyWith(color: grey,),),
                          Text("451263",style: myTextStyle500.copyWith(fontSize: 13),),
                          SizedBox(height: 2.h),
                          Text("Primary KYC No",style: myTextStyle600a.copyWith(color: grey),),
                          Text("451263",style: myTextStyle500.copyWith(fontSize: 13),),
                          SizedBox(height: 2.h),
                          Text("CB Status",style: myTextStyle600a.copyWith(color: grey),),
                          Text("Active",style: myTextStyle500.copyWith(fontSize: 13),),
                        ],
                      ),

                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Applicant Name",style: myTextStyle600a.copyWith(color: grey),),
                          Text("Pawn Kumar",style:  myTextStyle500.copyWith(fontSize: 13),),
                          SizedBox(height: 2.h),
                          Text("Application Date",style: myTextStyle600a.copyWith(color: grey),),
                          Text("10 Oct 2022",style: myTextStyle500.copyWith(fontSize: 13),),
                          SizedBox(height: 2.h),
                          Text("Applied Amount",style: myTextStyle600a.copyWith(color: grey),),
                          Text("10022",style: myTextStyle500.copyWith(fontSize: 13),),
                        ],
                      ),

                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Father Name",style: myTextStyle600a.copyWith(color: grey,),),
                          Text("Abhinash",style: myTextStyle500.copyWith(fontSize: 13),),
                          SizedBox(height: 2.h),
                          Text("Last CB Check date",style: myTextStyle600a.copyWith(color: grey),),
                          Text("10 Oct 2022",style: myTextStyle500.copyWith(fontSize: 13),),
                          SizedBox(height: 2.h),
                          Text("Stage Status",style: myTextStyle600a.copyWith(color: grey),),
                          Text("Pending",style: myTextStyle500.copyWith(fontSize: 13),),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Present Address",style: myTextStyle600a.copyWith(color: grey),),
                      Text("Village/Locality - Dakarangia G. Pitown- Greesingia P.S. - G.Udayagiri",style: myTextStyle500.copyWith(fontSize: 13),),
                    ],
                  ),
                ),

                Align(alignment: Alignment.center,
                  child: Row(
                    children: [
                      SizedBox(width: 5.w,),
                      InkWell(
                        onTap: () {
                          showDialog(context: context, builder: (context) {
                            return AlertDialog(
                              content: SizedBox(
                                height: 50.h,width: 90.w,
                                child: Column(
                                  children: [
                                    Image(height: 100,image: AssetImage("assets/chart.png")),
                                    SizedBox(height: 2.h,),
                                    Text("Please select User to View CB Report", style: myTextstye,textAlign: TextAlign.center,),

                                    dropdown_widget(hint: "Select",
                                      name: "",value: report,data: Report,
                                      onChanged: (p0) {
                                        report = p0;
                                        setState(() {});
                                      },),
                                    SizedBox(height: 3.h,),
                                    TextBtnWidget(name: "View", onTap: (){},),
                                    SizedBox(height: 2.h,),
                                    TextBtnWidget(name: "Cancel", onTap: (){},)
                                  ],
                                ),
                              ),
                            );
                          }
                          );
                        },
                        child: Container(margin: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
                          height: 7.h,width: 60.w,alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: grey.shade200,
                            border: Border.all(color: grey.shade400),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: const Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.remove_red_eye,color: kPrimaryColor,),
                              Text("  View CB Report",style: TextStyle(color: kPrimaryColor,fontWeight: FontWeight.bold,fontSize: 18),)
                            ],
                          ),
                        ),
                      ),
                      CircleAvatar(backgroundColor: kPrimaryColor,
                        child: IconButton(onPressed: () {}, icon: Icon(Icons.refresh_outlined,color: white,)),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: ABButton(
                  paddingTop: MediaQuery.of(context).size.height * 0.0225,
                  paddingBottom: 15.0,
                  paddingLeft: 8.0,
                  paddingRight: 5.0,size: 15,
                  text: 'Send to CB',
                  onPressed: () {
                    
                  },
                ),
              ),
              Expanded(
                child: ABButton(
                  paddingTop: MediaQuery.of(context).size.height * 0.0225,
                  paddingBottom: 15.0,
                  paddingLeft: 5.0,
                  paddingRight: 5.0,btnColor: white,textColor: kPrimaryColor,
                  text: 'Reject',
                  onPressed: () {
                    myDiloag2(context, "assets/alert.png", "Are you sure to reject \n Pawan Kumar?",
                        "Yes! Reject", (){}, "Cancel", (){
                      Navigator.pop(context);
                        });
                  },
                ),
              ),
              Expanded(
                child: ABButton(
                  paddingTop: MediaQuery.of(context).size.height * 0.0225,
                  paddingBottom: 15.0,
                  paddingLeft: 5.0,
                  paddingRight: 8.0,
                  text: 'Continue',
                  onPressed: () {
                    
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
