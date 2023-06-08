import 'dart:async';

import 'package:annapurna225/Screens/Village%20Capture/Village%20Addition.dart';
import 'package:annapurna225/components/dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sizer/sizer.dart';
import '../../api_factory/prefs/pref_utils.dart';
import '../../components/TextBtnWidget.dart';
import '../../components/constants.dart';
import '../../notifier/providers.dart';

class GetLocation extends ConsumerStatefulWidget {
  const GetLocation({Key? key}) : super(key: key);

  @override
  ConsumerState<GetLocation> createState() => _GetLocationState();
}

class _GetLocationState extends ConsumerState<GetLocation> {
  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();
  static const LatLng _center = const LatLng(45.521563, -122.677433);
  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  clientDetailsApi() async {
    String userid=await PrefUtils.getUserId()??'';
    ref.watch(drawerProvider).clientDetailsAPI(
        context: context,
        UserID: userid,
        pincode: "",
        Village: "");
  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    clientDetailsApi();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: white,
      //   actions: [
      //     SizedBox(width: 1.h,),
      //     Expanded(flex: 4,
      //         child: Center(child: Text("Get Location",style: myTextstye1.copyWith(fontWeight: FontWeight.bold,fontSize: 13),))
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
      body: Column(
        children: [
          SizedBox(height: 1.h,),
          Container(margin: EdgeInsets.all(10),
            width: 100.w,height: 7.h,alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: kPrimaryColor),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on_sharp,color: kPrimaryColor,),
                Text("Get Location",style: myTextStyle500.copyWith(color: kPrimaryColor),),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
              elevation: 5,
              shadowColor: Colors.black,
              child: Container(margin: EdgeInsets.all(5),padding: EdgeInsets.all(5),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Latitude",
                              style: myTextStyle600a.copyWith(color: grey),
                            ),
                            SizedBox(
                              height: .5.h,
                            ),
                            Text(
                              "27.2046° N",
                              style: myTextStyle500.copyWith(fontSize: 14),
                            ),
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Longitude",
                              style: myTextStyle600a.copyWith(color: grey),
                            ),
                            SizedBox(
                              height: .5.h,
                            ),
                            Text(
                              "77.4977° E",
                              style: myTextStyle500.copyWith(fontSize: 14),
                            ),
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Distance from Branch",
                              style: myTextStyle600a.copyWith(color: grey),
                            ),
                            SizedBox(
                              height: .5.h,
                            ),
                            Text(
                              "10KM",
                              style: myTextStyle500.copyWith(fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 2.h,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Present Address",style: myTextStyle600a.copyWith(color: grey),),
                        Row(
                          children: [
                            Expanded(child: Text("Village/Locality - Dakarangia G. Pitown- Greesingia P.S. - G.Udayagiri",style: myTextStyle500.copyWith(fontSize: 13),)),
                            CircleAvatar(backgroundColor: Colors.red,radius: 12,
                              child: Icon(Icons.clear,size: 15,color: Colors.white,),)
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          Expanded(child: Container(margin: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey),
            child:  GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 11.0,
              ),
            ),
          )),

          TextBtnWidget(name: "Process",
            onTap: () {
            myDiloag(context, "assets/alert.png", "Distance is exceeding Geo Policy! Mapping not possible", "Okay", (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => VillageAdd(),));
            });
          },),
          SizedBox(height: 2.h,)
        ],
      ),
    );
  }
}
