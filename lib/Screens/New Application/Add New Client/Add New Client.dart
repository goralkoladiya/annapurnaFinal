import 'package:annapurna225/components/TextFieldWidget.dart';
import 'package:annapurna225/components/dialog.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:sizer/sizer.dart';
import '../../../AppImages.dart';
import '../../../components/constants.dart';
import '../../../components/dropdown_widget.dart';
import '../../../widgets/ab_button.dart';
import '../../../widgets/ab_text_input.dart';
import '../Update Mobile.dart';

class NewClientAdd extends StatefulWidget {
  const NewClientAdd({Key? key}) : super(key: key);

  @override
  State<NewClientAdd> createState() => _NewClientAddState();
}

class _NewClientAddState extends State<NewClientAdd> {
  final _userNameController = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController relation = TextEditingController();
  bool visible = false;
  String? Prof;
  List prof = [
    "Mr.",
    "Mrs",
    "Other",
  ];

  @override
  Widget build(BuildContext context) {
    double theight=MediaQuery.of(context).size.height;
    double twidth=MediaQuery.of(context).size.width;
    double statusbar=MediaQuery.of(context).padding.top;
    double navbar=MediaQuery.of(context).padding.bottom;
    double bheight=theight-statusbar-navbar;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: theight,
            width: twidth,
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
                      padding: const EdgeInsets.only(top: defaultPadding,left: 25,right: 25,bottom: 5),
                      child: Container(
                          height: 85.h,
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
                                Align(alignment: Alignment.center,child: Image.asset(width: 80,"assets/add person.png")),
                                const Padding(
                                  padding: EdgeInsets.only(top: 25.0, left: 15, bottom: 10),
                                  child: Text('Add new client',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: dropdown_widget(hint: "Mr.",
                                          name: "Select",value: Prof,data: prof,
                                          onChanged: (p0) {
                                            Prof = p0;
                                            setState(() {});
                                          },),
                                      ),
                                      Expanded(flex: 2,child: TextFieldWidget(controller: _userNameController, name: "Name"))
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: dropdown_widget(hint: "Father.",
                                    name: "Relationship Details",value: Prof,data: prof,
                                    onChanged: (p0) {
                                      Prof = p0;
                                      setState(() {});
                                    },),
                                ),

                                ABTextInput(
                                  autoValidator: AutovalidateMode.onUserInteraction,
                                  titleText: 'Mobile Number',
                                  controller: mobile,hintText: 'Enter Mobile',
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 20,right: 20,bottom: 0,top: 5),
                                  child: Text("(Aadhar registered Mobile Number Preferable)",style: TextStyle(fontSize: 10),),
                                ),

                                (visible) ?  Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Column(
                                    children: [
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
                                                  padding: EdgeInsets.only(left: 10,bottom: 5),
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
                                            SizedBox(height: 1.h,),
                                            Text("(Please enter verification code sent on your number)",style: TextStyle(fontSize: 10),)
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )

                                : Align(alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(onTap: () {
                                        visible=true;
                                        setState(() {});
                                      },child: Text("Send OTP",style: TextStyle(fontWeight: FontWeight.bold,decoration: TextDecoration.underline,color: kPrimaryColor))),
                                    )),

                                ABButton(
                                  paddingTop: 2,
                                  paddingBottom: 20.0,
                                  paddingLeft: 20.0,
                                  paddingRight: 20.0,
                                  text: 'Search & Next',
                                  onPressed: () {
                                    myDiloag2(context, "assets/checklist.png", "Client Enrolment", "Branch",boxheight: 40,
                                            (){}, "Field", (){
                                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => UpdateMobile(),));
                                        });
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
        ),
      ),
    );
  }
}
