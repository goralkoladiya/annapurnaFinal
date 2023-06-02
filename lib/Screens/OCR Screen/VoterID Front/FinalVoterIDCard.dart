import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sizer/sizer.dart';
import '../../../components/constants.dart';
import '../VoterID Back/BackSiteVoterID.dart';
import 'Add VoterID.dart';

class FinalVoterID extends StatefulWidget {
  final image;
  FinalVoterID([this.image]);

  @override
  State<FinalVoterID> createState() => _FinalVoterIDState();
}

class _FinalVoterIDState extends State<FinalVoterID> {

  permission() async {

    var status = await Permission.camera.status;
    if (status.isDenied) {
      Map<Permission, PermissionStatus> statuses = await [
        Permission.camera,
        Permission.storage,
      ].request();
    }
  }

  @override
  void initState() {
    permission();
    super.initState();
    print(widget.image);
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text("Confirm Voter ID",style: myTextStyle700.copyWith(color: white),),
      ),

      bottomSheet:  Container(
          height: 15.h,width: double.infinity,
          alignment: Alignment.center,
          child:  Column(
            children: [
              SizedBox(height: 1.h,),
              Text("Make sure the photo is not blurry",style: myTextStyle500),
              SizedBox(height: 2.h,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: () async {
                    permission();
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return VoterIdCard();
                    },));
                  }, child: Text("Retake",style: myTextStyle700.copyWith(fontWeight: FontWeight.w500,color: kPrimaryColor,fontSize: 15),),
                    style: ElevatedButton.styleFrom(side: BorderSide(color: kPrimaryColor),backgroundColor: white,fixedSize: Size(40.w, 6.h)),),
                  ElevatedButton(onPressed: () async {
                    permission();
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return BackVoterIdCard();
                    },));
                  },
                    style: ElevatedButton.styleFrom(backgroundColor: kPrimaryColor,fixedSize: Size(40.w, 6.h)),
                    child: Text("Confirm",style: myTextStyle700.copyWith(fontWeight: FontWeight.w500,fontSize: 15),),),
                ],
              ),
            ],
          ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(height:double.infinity,width: double.infinity,color: grey.shade400.withOpacity(0.8),),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(bottom: 12.h),height:60.h,width: 80.w,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: widget.image.image
                    )
                  ),
                ),),
            ),
          ],
        ),
      ),
    );
  }
}
