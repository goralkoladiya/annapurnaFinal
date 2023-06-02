import 'package:annapurna225/Screens/New%20Application/Verify%20Mobile.dart';
import 'package:annapurna225/components/constants.dart';
import 'package:annapurna225/components/dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:sizer/sizer.dart';

import '../../AppImages.dart';
import '../../widgets/ab_button.dart';
import '../../widgets/ab_text_input.dart';

class UpdateMobile extends StatefulWidget {
  const UpdateMobile({Key? key}) : super(key: key);

  @override
  State<UpdateMobile> createState() => _UpdateMobileState();
}

class _UpdateMobileState extends State<UpdateMobile> {
  TextEditingController oldMobile =  TextEditingController();
  TextEditingController newMobile =  TextEditingController();
  TextEditingController confirmMobile =  TextEditingController();

  @override
  Widget build(BuildContext context) {
    double theight=MediaQuery.of(context).size.height;
    double twidth=MediaQuery.of(context).size.width;
    double statusbar=MediaQuery.of(context).padding.top;
    double navbar=MediaQuery.of(context).padding.bottom;
    double bheight=theight-statusbar-navbar;
    return Scaffold(
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
                      height: 65.h,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 3),
                          borderRadius: const BorderRadius.all(Radius.circular(20))
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 2.h,),
                            Align(alignment: Alignment.center,child: Image.asset(width: 80,"assets/mobile error.png")),
                            const Padding(
                              padding: EdgeInsets.only(top: 25.0, left: 15, bottom: 20),
                              child: Text('Update Mobile Number',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold)),
                            ),

                            ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: 'Existing Mobile Number',
                              controller: oldMobile,
                              hintText: '+91-9897098977',
                            ),
                            ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: 'New Mobile Number',
                              controller:  newMobile,
                              hintText: '9897098977',
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 5),
                              child: Text("(Aadhar registered Mobile Number Preferable)",style: TextStyle(fontSize: 10),),
                            ),

                            ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: 'Confirm Mobile Number',
                              controller:  confirmMobile,
                              hintText: '9897098977',
                            ),
                            
                             Row(mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text("Resend OTP in 120 sec",style: TextStyle(fontWeight: FontWeight.bold,decoration: TextDecoration.underline,color: kPrimaryColor)),
                                    Text("(3 attempts left)",style: TextStyle(fontSize: 10))
                                  ],
                                ),
                                SizedBox(width: 5.w,)
                              ],
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: defaultPadding,right: defaultPadding,top: defaultPadding),
                              child: Column(
                                children: [
                                  const Align(alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 12,bottom: 5),
                                        child: Text("OTP",style: TextStyle(fontWeight: FontWeight.bold)),
                                      )),
                                  OTPTextField(
                                    margin: EdgeInsets.symmetric(horizontal: 3),
                                    // contentPadding: ,
                                    length: 6,
                                    width: MediaQuery.of(context).size.width,
                                    fieldWidth: twidth*0.1035,
                                    style: TextStyle(
                                        fontSize: bheight*0.03
                                    ),
                                    textFieldAlignment: MainAxisAlignment.center,
                                    fieldStyle: FieldStyle.box,
                                    onCompleted: (pin) {
                                      print("Completed: " + pin);
                                    },
                                  ),
                                ],
                              ),
                            ),

                            ABButton(
                              paddingTop: 10,
                              paddingBottom: 0.0,
                              paddingLeft: 20.0,
                              paddingRight: 20.0,
                              text: 'Update',
                              onPressed: () {
                                myDiloag(context, "assets/Done.png", "Mobile Number updated Successfully",boxheight: 35,
                                    "Okay", (){
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => VerifyMobileNo(),));
                                    });
                              },
                            ),

                            ABButton(
                              paddingTop: 10,
                              paddingBottom: 20.0,
                              paddingLeft: 20.0,textColor: kPrimaryColor,
                              paddingRight: 20.0,btnColor: Colors.white,
                              text: 'Cancel',
                              onPressed: () {
                                // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ClientFound(),));
                              },
                            ),
                          ],

                        ),
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
