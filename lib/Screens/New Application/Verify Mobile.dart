import 'package:annapurna225/components/TextFieldWidget.dart';
import 'package:annapurna225/components/dialog.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sizer/sizer.dart';

import '../../AppImages.dart';
import '../../api_factory/prefs/pref_utils.dart';
import '../../components/constants.dart';
import '../../components/dropdown_widget.dart';
import '../../notifier/providers.dart';
import '../../widgets/ab_button.dart';
import '../../widgets/ab_text_input.dart';
import '../OCR Screen/Add Client/CaptureImage.dart';
import 'Update Mobile.dart';

class VerifyMobileNo extends ConsumerStatefulWidget {
  const VerifyMobileNo({Key? key}) : super(key: key);

  @override
  ConsumerState<VerifyMobileNo> createState() => _VerifyMobileNoState();
}

class _VerifyMobileNoState extends ConsumerState<VerifyMobileNo> {
  final _userNameController = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController relation = TextEditingController();
  String? Prof;
  List prof = [
    "Mr.",
    "Mrs",
    "Other",
  ];

  verifyMobileApi() async {
    String userid=await PrefUtils.getUserId()??'';
    ref.watch(newApplicationViewModel).verifyMobileApi(
        context: context,
        UserID: userid,
        ExisNumber: '',
        NewMobileNumber: '',
        ConfirmNumber: '');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    verifyMobileApi();
  }

  @override
  Widget build(BuildContext context) {
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
                              child: Text('Verify Mobile Number',
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
                                    child: dropdown_widget(
                                      name: "Select",value: Prof,data: prof,
                                      onChanged: (p0) {
                                        Prof = p0;
                                        setState(() {});
                                      },),
                                  ),
                                  Expanded(flex: 2,child: TextFieldWidget(controller: _userNameController, name: "Name"))
                                ],
                              )
                            ),
                            ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: 'Relationship with Applicant',
                              controller: relation,
                              hintText: 'Father',
                            ),
                            ABTextInput(
                              autoValidator: AutovalidateMode.onUserInteraction,
                              titleText: 'Mobile Number',
                              controller: mobile,suffix: TextButton(child: Text("Update",style: TextStyle(color: kPrimaryColor),),
                              onPressed: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => UpdateMobile(),));
                              },),
                              hintText: 'Mobile',
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 5,top: 5),
                              child: Text("(Aadhar registered Mobile Number Preferable)",style: TextStyle(fontSize: 10),),
                            ),
                            ABButton(
                              paddingTop: 10,
                              paddingBottom: 20.0,
                              paddingLeft: 20.0,
                              paddingRight: 20.0,
                              text: 'Save & Next',
                              onPressed: () {
                                myDiloag2(context, "assets/checklist.png", "Client Enrolment", "Branch",boxheight: 40,
                                    (){}, "Field", (){
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => camera(),));
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
    );
  }
}
