import 'package:annapurna225/Screens/LAF%20Status/Status%20Detail.dart';
import 'package:annapurna225/components/dropdown_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../AppImages.dart';
import '../../components/TextBtnWidget.dart';
import '../../components/constants.dart';
import '../../widgets/ab_button.dart';
import '../../widgets/ab_text_input.dart';

class LafSearchClient extends StatefulWidget {
  const LafSearchClient({Key? key}) : super(key: key);

  @override
  State<LafSearchClient> createState() => _LafSearchClientState();
}

class _LafSearchClientState extends State<LafSearchClient> {
  String? Prof;
  final _userNameController = TextEditingController();
  List prof = [
    "Voter ID",
    "Aadhaar Card",
    "Other",
  ];
  String filed = "";
  TextEditingController detail = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      //     Expanded(flex: 3,
      //       child: Center(child: Text("Pending Status",style: myTextstye1.copyWith(fontWeight: FontWeight.bold,fontSize: 13),))
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
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Image.asset(AppImages.waveOne, width: 300),
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Image.asset(AppImages.waveTwo),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Image.asset(AppImages.logo, width: 250)),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                      height: 400,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 3
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(20))
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 25.0, left: 15, bottom: 20),
                            child: Text('Login',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: dropdown_widget(hint: "Select",
                              name: "Choose Search By",value: Prof,data: prof,
                              onChanged: (p0) {
                              Prof = p0;
                              setState(() {});
                            },),
                          ),
                          ABTextInput(
                            autoValidator: AutovalidateMode.onUserInteraction,
                            titleText: 'Enter Detail',
                            onChange: (val) {
                              filed=val!;
                              setState(() {});
                            },
                            controller: _userNameController,
                            hintText: 'Enter Detail',
                          ),


                          ( Prof!=null || filed.isEmpty) ?
                          ABButton(
                            paddingTop: MediaQuery.of(context).size.height * 0.0225,
                            paddingBottom: 15.0, paddingLeft: 20.0, paddingRight: 20.0,
                            btnColor: grey.shade200,textColor: grey,
                            text: 'Search',
                            onPressed: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => StatusDetail(),));
                            },
                          )
                           : ABButton(
                            paddingTop: MediaQuery.of(context).size.height * 0.0225,
                            paddingBottom: 15.0,
                            paddingLeft: 20.0,
                            paddingRight: 20.0,
                            text: 'Search',
                            onPressed: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => StatusDetail(),));
                            },
                          )
                        ],

                      )
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

