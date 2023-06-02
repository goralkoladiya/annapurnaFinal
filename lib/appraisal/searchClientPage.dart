import 'package:annapurna225/AppImages.dart';
import 'package:annapurna225/components/constants.dart';
import 'package:annapurna225/components/dropdown_widget.dart';
import 'package:annapurna225/widgets/ab_text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'appraisalForm1.dart';

class SearchClientPage extends StatefulWidget {
  const SearchClientPage({Key? key}) : super(key: key);

  @override
  State<SearchClientPage> createState() => _SearchClientPageState();
}

class _SearchClientPageState extends State<SearchClientPage> {
  TextEditingController detailsController=TextEditingController();

  List data=["Search","Village","State"];
  String i="Search";
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
                      height: 370,
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
                          Row(
                            children: [
                              Expanded(
                                child: dropdown_widget(
                                  value: i,
                                  name: "Choose Search Type",
                                  onChanged: (p0) {
                                    setState(() {
                                      i=p0!;
                                    });
                                  },
                                  data: data,
                                ),
                              ),
                            ],
                          ),
                          ABTextInput(
                            controller: detailsController,
                            autoValidator: AutovalidateMode.onUserInteraction,
                            titleText: 'Enter Details',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter details';
                              }return null;
                            },
                            hintText: 'Enter Details',
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding),
                                  child: Container(
                                    height: 40.h,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: kPrimaryColor
                                        ),
                                        onPressed: () {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => AppraisalForm1(),));
                                        }, child: Text("Search")),
                                  ),
                                ),
                              ),
                            ],
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
