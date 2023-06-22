import 'package:annapurna225/components/TextFieldWidget.dart';
import 'package:annapurna225/components/dialog.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../components/constants.dart';
import '../../widgets/ab_button.dart';
import 'Verify Mobile.dart';

class AppliProceed extends StatefulWidget {
  const AppliProceed({Key? key}) : super(key: key);

  @override
  State<AppliProceed> createState() => _AppliProceedState();
}

class _AppliProceedState extends State<AppliProceed> {
  TextEditingController pincode = TextEditingController();
  TextEditingController village = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: TextFieldWidget(controller: pincode, name: "Pincode")),
                Expanded(child: TextFieldWidget(controller: village, name: "Village",myIcon: Icons.search,)),
              ],
            ),
            Align(alignment: Alignment.centerRight,
              child: Container(padding: EdgeInsets.all(3),margin: EdgeInsets.all(5),
                decoration:BoxDecoration(color: Colors.red,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Text("Medium",style: TextStyle(color: white,fontSize: 10),),
              ),
            ),
            Card(elevation: 3,
              child: Column(
                children: [
                  Container(margin: EdgeInsets.all(10),padding: EdgeInsets.all(10),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Gram Panchayat",style: myTextStyle600a.copyWith(color: grey,),),
                            Text("Greesingia",style: myTextStyle500.copyWith(fontSize: 13),),
                            SizedBox(height: 2.h),
                            Text("Census ID",style: myTextStyle600a.copyWith(color: grey),),
                            Text("12356",style: myTextStyle500.copyWith(fontSize: 13),),
                          ],
                        ),

                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Block/Tehsil",style: myTextStyle600a.copyWith(color: grey),),
                            Text("Greesingia",style:  myTextStyle500.copyWith(fontSize: 13),),
                            SizedBox(height: 2.h),
                            Text("Lat",style: myTextStyle600a.copyWith(color: grey),),
                            Text("20.12204",style: myTextStyle500.copyWith(fontSize: 13),),
                          ],
                        ),

                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("District",style: myTextStyle600a.copyWith(color: grey,),),
                            Text("Udayagiri ",style: myTextStyle500.copyWith(fontSize: 13),),
                            SizedBox(height: 2.h),
                            Text("Long",style: myTextStyle600a.copyWith(color: grey),),
                            Text("84.12204",style: myTextStyle500.copyWith(fontSize: 13),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(child: ABButton(
                  paddingTop: MediaQuery.of(context).size.height * 0.0225,
                  paddingBottom: 15.0,
                  paddingLeft: 15,btnColor: Colors.white,
                  paddingRight: 15,textColor: kPrimaryColor,
                  text: 'View on map',
                  onPressed: () {

                  },
                )),
                Expanded(child: ABButton(
                  paddingTop: MediaQuery.of(context).size.height * 0.0225,
                  paddingBottom: 15.0,
                  paddingLeft: 15,
                  paddingRight: 15,
                  text: 'Proceed',
                  onPressed: () {
                    myDiloag(context, "assets/dailog.png" ,"No Data Available", "Okay",boxheight: 32 ,(){
                      myDiloag(context, "assets/add person.png" ,"Client Is Not Eligible!", "Okay",boxheight: 32 ,(){
                        myDiloag2(context, "assets/link.png", "Are You Sure To Unlink Rajesh From The Household?",
                            "Yes! Proceed", (){
                              myDiloag(context, "assets/Broken_Link.png", "Rajesh Has Been Removed From The Household Successfully",
                                "Okay", (){
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => VerifyMobileNo(),));
                                },);
                            }, "Cancel", (){});
                      });
                    });
                    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AppliProceed(),));
                  },
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
