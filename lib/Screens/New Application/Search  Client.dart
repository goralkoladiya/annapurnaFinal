import 'package:annapurna225/Screens/New%20Application/Add%20New%20Client/Add%20New%20Client.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../AppImages.dart';
import '../../components/constants.dart';
import '../../components/dialog.dart';
import '../../components/dropdown_widget.dart';
import '../../widgets/ab_button.dart';
import '../../widgets/ab_text_input.dart';
import 'Client Found.dart';

class SearchClient extends StatefulWidget {
  const SearchClient({Key? key}) : super(key: key);

  @override
  State<SearchClient> createState() => _SearchClientState();
}

class _SearchClientState extends State<SearchClient> {
  final _userNameController = TextEditingController();
  TextEditingController detail = TextEditingController();
  String? Prof;
  List prof = [
    "Voter ID",
    "Aadhaar Card",
    "Other",
  ];
  String filed = "";

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
                            child: Text('Search Client',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: dropdown_widget(hint: "Select",
                              name: "Choose Search Type",value: Prof,data: prof,
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
                              myDiloag2(context, "assets/dailog.png", "No Record Found!Enrol as New Client?",
                                  "Yes! Proceed", (){
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NewClientAdd(),));
                                  }, "Cancel", (){});
                            },
                          )
                              : ABButton(
                            paddingTop: MediaQuery.of(context).size.height * 0.0225,
                            paddingBottom: 15.0,
                            paddingLeft: 20.0,
                            paddingRight: 20.0,
                            text: 'Search',
                            onPressed: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ClientFound(),));
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
