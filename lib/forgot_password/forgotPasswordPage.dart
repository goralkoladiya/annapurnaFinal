import 'package:annapurna225/AppImages.dart';
import 'package:annapurna225/components/constants.dart';
import 'package:annapurna225/components/dialog.dart';
import 'package:annapurna225/login/login_view.dart';
import 'package:annapurna225/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import '../widgets/ab_text_input.dart';

class forgotPasswordPage extends StatefulWidget {
  const forgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<forgotPasswordPage> createState() => _forgotPasswordPageState();
}

class _forgotPasswordPageState extends State<forgotPasswordPage> {
  String otpText=Strings.sendOTP;
  bool kvisible=false;
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
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Center(child: Image.asset(AppImages.logo, width: 250)),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                                padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                                height: bheight*0.68,
                                width: twidth*0.85,
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
                                      padding: EdgeInsets.only(top: 31.0, left: defaultPadding, bottom: 10),
                                      child: Text('Forgot Password',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 19,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    ABTextInput(
                                      autoValidator: AutovalidateMode.onUserInteraction,
                                      titleText: 'Employee ID',
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter Employee ID';
                                        }return null;
                                      },
                                      hintText: 'Enter Employee ID',
                                    ),
                                    SizedBox(height: bheight*0.01,),
                                    ABTextInput(
                                      textInputType: TextInputType.phone,
                                      autoValidator: AutovalidateMode.onUserInteraction,
                                      titleText: 'Registered Mobile Number',
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter Phone number';
                                        }return null;
                                      },
                                      hintText: 'Enter No.',
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: bheight*0.025,bottom: bheight*0.01,right: defaultPadding),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          InkWell(
                                              child: Text(otpText,style: TextStyle(decoration: TextDecoration.underline,color: kPrimaryColor),),
                                              onTap: () {
                                                myDialog3(context, AppImages.done, "OTP Sent Successfully!","Okay", bheight*0.4, twidth*0.4);
                                                setState(() {
                                                  otpText=Strings.resendOTP;

                                                });
                                              },)
                                        ],
                                      ),
                                    ),
                                    // Padding(
                                    //   padding: EdgeInsets.only(bottom: bheight*0.02,right: defaultPadding),
                                    //   child: Row(
                                    //     mainAxisAlignment: MainAxisAlignment.end,
                                    //     children: [
                                    //       InkWell(child: Text(Strings.resendOTP,style: TextStyle(decoration: TextDecoration.underline,color: kPrimaryColor),))
                                    //     ],
                                    //   ),
                                    // ),
                                    Padding( padding: EdgeInsets.only(left: defaultPadding),child: InkWell(child: Text("OTP",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),),
                                    SizedBox(height: bheight*0.01,),
                                    OTPTextField(
                                      margin: EdgeInsets.symmetric(horizontal: 1),
                                      // contentPadding: ,
                                      length: 6,
                                      width: MediaQuery.of(context).size.width,
                                      fieldWidth: twidth*0.1090,
                                      style: TextStyle(
                                          fontSize: bheight*0.03
                                      ),
                                      textFieldAlignment: MainAxisAlignment.center,
                                      fieldStyle: FieldStyle.box,
                                      onCompleted: (pin) {
                                        print("Completed: " + pin);
                                      },
                                    ),
                                    SizedBox(height: bheight*0.01,),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                                      child: Text("(Please enter verification code sent on your number)",style: TextStyle(fontSize: bheight*0.013),),
                                    ),
                                    SizedBox(height: bheight*0.02,),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
                                              onPressed: () {

                                              }, child: Text("Verify & Next")),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(child: OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                              side: BorderSide(color: Colors.deepPurple,width: 2)
                                          ),
                                          onPressed: () {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView(),));
                                          },
                                          child: Text("Back to Login",style: TextStyle(color: Colors.deepPurple)),
                                        ))
                                      ],
                                    )
                                  ],
                                )
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
        )
    );
  }
}
