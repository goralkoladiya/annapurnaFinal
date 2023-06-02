import 'package:annapurna225/Screens/Village%20Capture/Village%20Addition.dart';
import 'package:annapurna225/components/dialog.dart';
import 'package:annapurna225/components/dropdown_widget.dart';
import 'package:annapurna225/widgets/ab_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../components/TextBtnWidget.dart';
import '../../components/TextFieldWidget.dart';
import '../../components/constants.dart';

class NewVillageReq extends StatefulWidget {
  const NewVillageReq({Key? key}) : super(key: key);

  @override
  State<NewVillageReq> createState() => _NewVillageReqState();
}

class _NewVillageReqState extends State<NewVillageReq> {
  TextEditingController district = TextEditingController();
  TextEditingController block = TextEditingController();
  TextEditingController village = TextEditingController();
  TextEditingController gramPan = TextEditingController();
  String? ClosestVillage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 2.h,),

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: TextFieldWidget(
                    isRequired: false, controller: block,filledColor: fillTextColor,
                    name: 'Pincode',
                  )),
                  Expanded(child: TextFieldWidget(
                    isRequired: false, controller: block,filledColor: fillTextColor,
                    name: 'State',
                  ))
                ],
              ),
              SizedBox(height: 2.h,),

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: dropdown_widget(name: "District",
                    data: [],hint: "District",value: ClosestVillage,onChanged: (p0) {
                      ClosestVillage = p0;
                      setState(() {});
                    },)),
                  Expanded(child: TextFieldWidget(
                    isRequired: false, controller: block,
                    name: 'Block',filledColor: fillTextColor,
                  ))
                ],
              ),
              SizedBox(height: 2.h,),

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: TextFieldWidget(
                    isRequired: false, controller: gramPan,
                    name: 'Gram Panchayat',filledColor: fillTextColor,
                  )),
                  Expanded(child: TextFieldWidget(
                    isRequired: false, controller: village,
                    name: 'Village',
                  ))
                ],
              ),
              SizedBox(height: 2.h,),

              TextFieldWidget(
                isRequired: false, controller: district,
                name: 'Address',filledColor: fillTextColor,
              ),
              SizedBox(height: 2.h,),

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: TextFieldWidget(
                    isRequired: false, controller: block,filledColor: fillTextColor,
                    name: 'Latitude, Longitude',
                  )),
                  Expanded(child: TextFieldWidget(
                    isRequired: false, controller: block,filledColor: fillTextColor,
                    name: 'Distance from Branch',
                  ))
                ],
              ),
              SizedBox(height: 2.h,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: dropdown_widget(name: "Closest village Name",
                  data: [],hint: "Village",value: ClosestVillage,onChanged: (p0) {
                      ClosestVillage = p0;
                      setState(() {});
                  },)),
                  Expanded(child: TextFieldWidget(
                    isRequired: false, controller: block,filledColor: fillTextColor,
                    name: 'Closest Census ID',
                  ))
                ],
              ),

              SizedBox(height: 2.h,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: TextFieldWidget(
                    isRequired: false, controller: block,filledColor: fillTextColor,
                    name: 'Employee Name',
                  )),
                  Expanded(child: TextFieldWidget(
                    isRequired: false, controller: block,filledColor: fillTextColor,
                    name: 'Employee ID',
                  ))
                ],
              ),
              SizedBox(height: 2.h,),

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: TextFieldWidget(
                    isRequired: false, controller: block,filledColor: fillTextColor,
                    name: 'Name of Zone',
                  )),
                  Expanded(child: TextFieldWidget(
                    isRequired: false, controller: block,filledColor: fillTextColor,
                    name: 'Contact No',
                  ))
                ],
              ),
              SizedBox(height: 2.h,),
              ABButton(
                  onPressed: () {
                    myDiloag(context, "assets/Done.png", "Request for approval sent Successfully!", "Okay",
                            boxheight: 32,(){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => VillageAdd(),));
                    });
                  },
                  paddingTop: 8.0,
                  paddingBottom: 15.0,
                  paddingLeft: 25.0,
                  paddingRight: 25.0,
                  text: "Request for approval")
            ],
          ),
        ),
      ),
    );
  }
}
