import 'package:annapurna225/Screens/Fees%20And%20Charges/Loan%20Processing%20fees.dart';
import 'package:annapurna225/components/dropdown_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../components/TextBtnWidget.dart';
import '../../components/constants.dart';
import '../LAF Status/LAF Search Client.dart';

class FeesCharges extends StatefulWidget {
  const FeesCharges({Key? key}) : super(key: key);

  @override
  State<FeesCharges> createState() => _FeesChargesState();
}

class _FeesChargesState extends State<FeesCharges> {

  List DrawerTitle = [
    "New Application",
    "LAF Status",
    "LUC Check",
    "Village Addition",
    "CB Deviation Approval",
    "Fees and Charges",
    "Notification",
    "Help",
    "Change Password"
  ];
  List DrawerImage = [
    "assets/Drawer/newApplication.png",
    "assets/Drawer/lafStatus.png",
    "assets/Drawer/lucCheck.png",
    "assets/Drawer/village.png",
    "assets/Drawer/cbDivition.png",
    "assets/Drawer/salary 1.png",
    "assets/Drawer/notification.png",
    "assets/Drawer/help.png",
    "assets/Drawer/chnagepass.png",
  ];

  String ? product;
  List Product = [
    "CDL",
    "CDL",
    "CDL",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(
      //   child: SafeArea(
      //     child: Padding(
      //       padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
      //       child: Column(
      //         children: [
      //           Row(
      //             children: [
      //               const CircleAvatar(
      //                 radius: 30,
      //                 child:
      //                 Image(image: AssetImage("assets/Drawer/profile.png")),
      //               ),
      //               SizedBox(
      //                 width: 4.w,
      //               ),
      //               Column(
      //                 children: [
      //                   Text(
      //                     "Vivek Sharma",
      //                     style: myTextStyle700.copyWith(fontSize: 18),
      //                   ),
      //                   const Text("Filed Credit Officer"),
      //                 ],
      //               )
      //             ],
      //           ),
      //           SizedBox(
      //             height: 3.h,
      //           ),
      //           Expanded(
      //             child: ListView.separated(
      //               itemCount: DrawerTitle.length,
      //               itemBuilder: (context, index) {
      //                 return ListTile(onTap: () {
      //                   switch (index+1) {
      //                     case 1:
      //                     // Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePassword(),));
      //                       break;
      //                     case 2:
      //                       Navigator.push(context, MaterialPageRoute(builder: (context) => LafSearchClient(),));
      //                       break;
      //                     case 3:
      //                     // Navigator.push(context, MaterialPageRoute(builder: (context) => Logout(),));
      //                       break;
      //                     case 4:
      //                     // Navigator.push(context, MaterialPageRoute(builder: (context) => Logout(),));
      //                       break;
      //                     case 5:
      //                     // Navigator.push(context, MaterialPageRoute(builder: (context) => Logout(),));
      //                       break;
      //                     case 6:
      //                       Navigator.push(context, MaterialPageRoute(builder: (context) => FeesCharges(),));
      //                       break;
      //                     case 7:
      //                     // Navigator.push(context, MaterialPageRoute(builder: (context) => Logout(),));
      //                       break;
      //                   }
      //                 },
      //                   title: Text(
      //                     "${DrawerTitle[index]}",
      //                     style: TextStyle(
      //                         fontWeight: FontWeight.w600, fontSize: 16),
      //                   ),
      //                   trailing: Icon(
      //                     Icons.arrow_forward_ios_outlined,
      //                     color: Colors.black,
      //                     size: 20,
      //                   ),
      //                   leading: Image.asset(DrawerImage[index]),
      //                 );
      //               },
      //               separatorBuilder: (BuildContext context, int index) {
      //                 return Divider();
      //               },
      //             ),
      //           ),
      //           SizedBox(
      //             height: 2.h,
      //           ),
      //           TextBtnWidget(
      //             name: 'Logout',
      //             btnColor: grey.shade100,
      //             textColor: grey,
      //             borderColor: Colors.grey,
      //             onTap: () {},
      //           ),
      //           SizedBox(
      //             height: 1.h,
      //           ),
      //           Text("Version 1.0.0")
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
      // appBar: AppBar(
      //   backgroundColor: white,
      //   actions: [
      //     Builder(builder: (context) =>
      //         Expanded(
      //           child: IconButton(
      //             color: black,
      //             onPressed: () {
      //               Scaffold.of(context).openDrawer();
      //             },
      //             icon: ImageIcon(AssetImage("assets/dasboardimg/Hamburger.png")),
      //           ),
      //         ),
      //     ),
      //     Expanded(flex: 2,
      //       child: Text("Loan Processing Fee",style: myTextstye1.copyWith(fontWeight: FontWeight.bold,fontSize: 13),)
      //     ),
      //     SizedBox(width: 40),
      //     Expanded(
      //       child: IconButton(
      //           color: black,
      //           onPressed: () {},
      //           icon: ImageIcon(AssetImage("assets/dasboardimg/Group 148.png"))),
      //     ),
      //     Expanded(
      //       child: PopupMenuButton(
      //         icon: ImageIcon(
      //           AssetImage("assets/dasboardimg/Group 149.png"),
      //           color: Colors.black,
      //         ),
      //         onSelected: (value) {
      //           switch (value) {
      //             case 1:
      //             // Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePassword(),));
      //               break;
      //             case 2:
      //             // Navigator.push(context, MaterialPageRoute(builder: (context) => Logout(),));
      //               break;
      //           }
      //         },
      //         itemBuilder: (context) => [
      //           const PopupMenuItem(
      //               value: 1,
      //               child: Row(
      //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                 children: [
      //                   Text(
      //                     "Change Password",
      //                     style: TextStyle(fontWeight: FontWeight.w500),
      //                   ),
      //                   Icon(
      //                     Icons.arrow_forward_ios,
      //                     color: Colors.black,
      //                     size: 15,
      //                   )
      //                 ],
      //               )),
      //           const PopupMenuItem(
      //               value: 2,
      //               child: Row(
      //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                 children: [
      //                   Text(
      //                     "Logout",
      //                     style: TextStyle(fontWeight: FontWeight.w500),
      //                   ),
      //                   Icon(
      //                     Icons.arrow_forward_ios,
      //                     color: Colors.black,
      //                     size: 15,
      //                   )
      //                 ],
      //               )),
      //         ],
      //         offset: Offset(0.0, AppBar().preferredSize.height + 5),
      //         shape: const RoundedRectangleBorder(
      //           borderRadius: BorderRadius.only(
      //             bottomLeft: Radius.circular(8.0),
      //             bottomRight: Radius.circular(8.0),
      //             topLeft: Radius.circular(8.0),
      //             topRight: Radius.circular(8.0),
      //           ),
      //         ),
      //       ),
      //     ),
      //     Expanded(
      //       child: PopupMenuButton(
      //         icon: ImageIcon(AssetImage("assets/dasboardimg/Group 150.png"),
      //             color: Colors.black),
      //         onSelected: (value) {
      //           switch (value) {
      //             case 1:
      //               showDialog(
      //                 context: context,
      //                 builder: (context) {
      //                   return AlertDialog(
      //                     content: SizedBox(
      //                       height: 36.h,
      //                       width: 90.w,
      //                       child: Column(
      //                         crossAxisAlignment: CrossAxisAlignment.center,
      //                         mainAxisAlignment: MainAxisAlignment.center,
      //                         children: [
      //                           Text(
      //                             "Contact Us",
      //                             style: myTextstye,
      //                             textAlign: TextAlign.center,
      //                           ),
      //                           SizedBox(
      //                             height: 3.h,
      //                           ),
      //                           Row(
      //                             children: [
      //                               Expanded(
      //                                 child: Container(
      //                                   padding: EdgeInsets.all(10),
      //                                   alignment: Alignment.center,
      //                                   decoration: BoxDecoration(
      //                                       border: Border.all(color: grey),
      //                                       borderRadius:
      //                                       BorderRadius.circular(10)),
      //                                   child: Column(
      //                                     crossAxisAlignment:
      //                                     CrossAxisAlignment.center,
      //                                     children: [
      //                                       Image.asset(
      //                                           "assets/dasboardimg/call 1.png"),
      //                                       SizedBox(
      //                                         height: 1.h,
      //                                       ),
      //                                       Text(
      //                                         "Support No",
      //                                         style: myTextStyle600a.copyWith(
      //                                             color: grey),
      //                                       ),
      //                                       SizedBox(
      //                                         height: 1.h,
      //                                       ),
      //                                       Text(
      //                                         "+91 8712459603",
      //                                         style: myTextStyle600a,
      //                                       ),
      //                                     ],
      //                                   ),
      //                                 ),
      //                               ),
      //                               SizedBox(
      //                                 width: 1.h,
      //                               ),
      //                               Expanded(
      //                                 child: Container(
      //                                   padding: EdgeInsets.all(10),
      //                                   alignment: Alignment.center,
      //                                   decoration: BoxDecoration(
      //                                       border: Border.all(color: grey),
      //                                       borderRadius:
      //                                       BorderRadius.circular(10)),
      //                                   child: Column(
      //                                     crossAxisAlignment:
      //                                     CrossAxisAlignment.center,
      //                                     children: [
      //                                       Image.asset(
      //                                           "assets/dasboardimg/mail.png"),
      //                                       SizedBox(
      //                                         height: 1.h,
      //                                       ),
      //                                       Text(
      //                                         "Email Address",
      //                                         style: myTextStyle600a.copyWith(
      //                                             color: grey),
      //                                       ),
      //                                       SizedBox(
      //                                         height: 1.h,
      //                                       ),
      //                                       Text(
      //                                         "support@annapurna.com",
      //                                         style: myTextStyle600a,
      //                                       ),
      //                                     ],
      //                                   ),
      //                                 ),
      //                               ),
      //                             ],
      //                           ),
      //                           SizedBox(
      //                             height: 3.h,
      //                           ),
      //                           TextBtnWidget(
      //                             name: "Close",
      //                             btnColor: white,
      //                             borderColor: kPrimaryColor,
      //                             textColor: kPrimaryColor,
      //                             onTap: () {
      //                               Navigator.pop(context);
      //                             },
      //                           )
      //                         ],
      //                       ),
      //                     ),
      //                   );
      //                 },
      //               );
      //               break;
      //             case 2:
      //             // Navigator.push(context, MaterialPageRoute(builder: (context) => Logout(),));
      //               break;
      //           }
      //         },
      //         itemBuilder: (context) => [
      //           const PopupMenuItem(
      //               value: 1,
      //               child: Row(
      //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                 children: [
      //                   Text(
      //                     "Contact Us",
      //                     style: TextStyle(fontWeight: FontWeight.w500),
      //                   ),
      //                   Icon(
      //                     Icons.arrow_forward_ios,
      //                     color: Colors.black,
      //                     size: 15,
      //                   )
      //                 ],
      //               )),
      //           const PopupMenuItem(
      //               value: 2,
      //               child: Row(
      //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                 children: [
      //                   Text(
      //                     "FAQs",
      //                     style: TextStyle(fontWeight: FontWeight.w500),
      //                   ),
      //                   Icon(
      //                     Icons.arrow_forward_ios,
      //                     color: Colors.black,
      //                     size: 15,
      //                   )
      //                 ],
      //               )),
      //           const PopupMenuItem(
      //               value: 3,
      //               child: Row(
      //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                 children: [
      //                   Text(
      //                     "Videos",
      //                     style: TextStyle(fontWeight: FontWeight.w500),
      //                   ),
      //                   Icon(
      //                     Icons.arrow_forward_ios,
      //                     color: Colors.black,
      //                     size: 15,
      //                   )
      //                 ],
      //               )),
      //         ],
      //         offset: Offset(0.0, AppBar().preferredSize.height + 5),
      //         shape: const RoundedRectangleBorder(
      //           borderRadius: BorderRadius.only(
      //             bottomLeft: Radius.circular(8.0),
      //             bottomRight: Radius.circular(8.0),
      //             topLeft: Radius.circular(8.0),
      //             topRight: Radius.circular(8.0),
      //           ),
      //         ),
      //       ),
      //     ),
      //     Expanded(flex: 2,
      //       child: Center(
      //         child: Text(
      //           "Vivek s.",
      //           style: myTextstye1.copyWith(fontSize: 14),
      //         ),
      //       ),
      //     ),
      //     Expanded(
      //       child: IconButton(
      //           color: black,
      //           onPressed: () {},
      //           icon: const Icon(
      //             Icons.keyboard_arrow_down_rounded,
      //             size: 15,
      //           )),
      //     )
      //   ],
      // ),

      body:  Column(
        children: [
          SizedBox(height: 2.h,),
          dropdown_widget(name: "Select Product",value: product,data: Product,hint: "Select",
            onChanged: (p0) {
              product = p0;
              setState(() {});
            },),
          Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
            elevation: 5,
            shadowColor: Colors.black,
            child: Container(
              height: 13.h,margin: EdgeInsets.all(10),padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Applicant Name", style: myTextStyle600a.copyWith(color: grey),),
                          SizedBox(height: .5.h,),
                          Text(
                            "Jai Prakash",
                            style: myTextStyle500.copyWith(fontSize: 14),
                          ),
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Date",
                            style: myTextStyle600a.copyWith(color: grey),
                          ),
                          SizedBox(
                            height: .5.h,
                          ),
                          Text(
                            "12 oct 1999",
                            style: myTextStyle500.copyWith(fontSize: 14),
                          ),

                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Voter Id",
                            style: myTextStyle600a.copyWith(color: grey),
                          ),
                          SizedBox(
                            height: .5.h,
                          ),
                          Text(
                            "4567899",
                            style: myTextStyle500.copyWith(fontSize: 14),
                          ),
                        ],
                      ),

                    ],
                  ),
                  SizedBox(height: 2.h,),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoanProcessing(),));
                    },
                    child: Row(
                      children: [
                      Icon(Icons.remove_red_eye,color: kPrimaryColor,),
                      Text("  View Details",style: TextStyle(color: kPrimaryColor,fontWeight: FontWeight.bold,fontSize: 18),)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
/*ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 5,
            shadowColor: Colors.black,
            child: Container(
              height: 15.h,
              child: Column(
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 3.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Applicant Name",
                            style: myTextStyle600a.copyWith(color: grey),
                          ),
                          SizedBox(
                            height: .5.h,
                          ),
                          Text(
                            "Jai Prakash",
                            style: myTextStyle500.copyWith(fontSize: 14),
                          ),
                          SizedBox(
                            height: 1.5.h,
                          ),
                          Text(
                            "Center Name",
                            style: myTextStyle600a.copyWith(color: grey),
                          ),
                          Text(
                            "C1",
                            style: myTextStyle500.copyWith(fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Spouse",
                            style: myTextStyle600a.copyWith(color: grey),
                          ),
                          SizedBox(
                            height: .5.h,
                          ),
                          Text(
                            "Meena",
                            style: myTextStyle500.copyWith(fontSize: 14),
                          ),
                          SizedBox(
                            height: 1.5.h,
                          ),
                          Text(
                            "Group Name",
                            style: myTextStyle600a.copyWith(color: grey),
                          ),
                          Text(
                            "Group One",
                            style: myTextStyle500.copyWith(fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Voter Id",
                            style: myTextStyle600a.copyWith(color: grey),
                          ),
                          SizedBox(
                            height: .5.h,
                          ),
                          Text(
                            "4567899",
                            style: myTextStyle500.copyWith(fontSize: 14),
                          ),
                          SizedBox(
                            height: 1.2.h,
                          ),
                          Text(
                            "",
                            style: myTextStyle600a.copyWith(color: grey),
                          ),
                          SizedBox(
                            height: .5.h,
                          ),
                          Text(
                            "",
                            style: myTextStyle500.copyWith(fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),);*/