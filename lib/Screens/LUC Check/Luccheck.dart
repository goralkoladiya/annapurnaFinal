import 'package:annapurna225/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../components/TextBtnWidget.dart';

class Luccheck extends StatefulWidget {
  const Luccheck({Key? key}) : super(key: key);

  @override
  State<Luccheck> createState() => _LuccheckState();
}

class _LuccheckState extends State<Luccheck> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      // appBar: AppBar(
      //   backgroundColor: white,
      //   actions: [
      //     Expanded(
      //       child: IconButton(
      //           color: black, onPressed: () {}, icon: Icon(Icons.arrow_back)),
      //     ),
      //     Expanded(
      //         child: Center(
      //       child: Text("LUC", style: boldTextsize8),
      //     )),
      //     Expanded(flex: 2, child: SizedBox()),
      //     Expanded(
      //       child: IconButton(
      //           color: black,
      //           onPressed: () {},
      //           icon:
      //               ImageIcon(AssetImage("assets/dasboardimg/Group 148.png"))),
      //     ),
      //     Expanded(
      //       child: PopupMenuButton(
      //         icon: ImageIcon(
      //           AssetImage("assets/dasboardimg/Group 149.png"),
      //           color: Colors.black,
      //         ),
      //         onSelected: (value) {},
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
      //                                           BorderRadius.circular(10)),
      //                                   child: Column(
      //                                     crossAxisAlignment:
      //                                         CrossAxisAlignment.center,
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
      //                                           BorderRadius.circular(10)),
      //                                   child: Column(
      //                                     crossAxisAlignment:
      //                                         CrossAxisAlignment.center,
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
      //               // Navigator.push(context, MaterialPageRoute(builder: (context) => Logout(),));
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
      //     Expanded(
      //       flex: 2,
      //       child: Center(
      //         child: Text(
      //           "Vivek s.",
      //           style: myTextstye1.copyWith(fontSize: 16),
      //         ),
      //       ),
      //     ),
      //     Expanded(
      //       child: IconButton(
      //           color: black,
      //           onPressed: () {},
      //           icon: const Icon(
      //             Icons.keyboard_arrow_down_rounded,
      //           )),
      //     )
      //   ],
      // ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                flex: 7,
                child: Container(
                  height: 7.h,
                  decoration: BoxDecoration(
                      color: luccolor, borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Center",
                        style: myTextStyle500.copyWith(color: lucTextColor),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 5.h,
                      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: luccolorDark,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "C1",
                          style: myTextStyle700.copyWith(
                              fontSize: 15, color: black),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 2.w,
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: 7.h,
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
          SizedBox(
            height: 10,
          ),
          Text(
            "  Total Searched (23)",
            style: myTextStyle700.copyWith(fontSize: 8.sp),
          ),
          SizedBox(
            height: 8,
          ),
          // ignore: avoid_unnecessary_containers
          Expanded(
            child: ListView.builder(
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
            ),
          )
        ]),
      ),
    );
  }
}
