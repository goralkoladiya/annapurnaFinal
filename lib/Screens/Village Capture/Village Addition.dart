import 'package:annapurna225/widgets/ab_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../components/TextBtnWidget.dart';
import '../../components/TextFieldWidget.dart';
import '../../components/constants.dart';
import '../../components/dialog.dart';
import 'New Village Request.dart';

class VillageAdd extends StatefulWidget {
  const VillageAdd({Key? key}) : super(key: key);

  @override
  State<VillageAdd> createState() => _VillageAddState();
}

class _VillageAddState extends State<VillageAdd> {
  TextEditingController district = TextEditingController();
  TextEditingController block = TextEditingController();
  TextEditingController village = TextEditingController();
  TextEditingController gramPan = TextEditingController();
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
                  Expanded(child: TextFieldWidget(
                    isRequired: false, controller: district,
                    name: 'District',myIcon: Icons.search,onIconPres: (){},
                  )),
                  Expanded(child: TextFieldWidget(
                    isRequired: false, controller: block,
                    name: 'Block',myIcon: Icons.search,onIconPres: (){},
                  ))
                ],
              ),
              SizedBox(height: 2.h,),

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: TextFieldWidget(
                    isRequired: false, controller: gramPan,
                    name: 'Gram Panchayat',myIcon: Icons.search,onIconPres: (){},
                  )),
                  Expanded(child: TextFieldWidget(
                    isRequired: false, controller: village,
                    name: 'Village',myIcon: Icons.search,onIconPres: (){},
                  ))
                ],
              ),
              SizedBox(height: 2.h,),

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: TextFieldWidget(
                    isRequired: false, controller: district,
                    name: 'Village census code',
                  )),
                  Expanded(child: Container())
                ],
              ),
              SizedBox(height: 2.h,),

              TextFieldWidget(
                isRequired: false, controller: district,
                name: 'Address',
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
              Row(
                children: [
                  Expanded(flex: 2,
                    child: ABButton(
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                            return NewVillageReq();
                          },));
                        },
                        paddingTop: 8.0,
                        paddingBottom: 15.0,
                        paddingLeft: 5.0,
                        paddingRight: 5.0,btnColor: Colors.white,textColor: kPrimaryColor,
                    text: "New Village Request"),
                  ),

                  Expanded(
                    child: ABButton(
                        onPressed: () {
                          myDiloag(context, "assets/Done.png", "New Village allocate request sent Successfully!", "Okay",
                                  boxheight: 32,(){});
                        },
                        paddingTop: 8.0,
                        paddingBottom: 15.0,
                        paddingLeft: 5.0,
                        paddingRight: 5.0,
                        text: "Allocate"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
