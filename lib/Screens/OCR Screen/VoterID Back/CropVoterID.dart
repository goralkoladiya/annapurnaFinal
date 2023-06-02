import 'dart:io';
import 'package:annapurna225/Screens/OCR%20Screen/VoterID%20Front/Add%20VoterID.dart';
import 'package:camera/camera.dart';
import 'package:crop_image/crop_image.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sizer/sizer.dart';
import '../../../components/constants.dart';
import 'BackSIteConfirmVoterID.dart';
import 'BackSiteVoterID.dart';

class BackCropVoterID extends StatefulWidget {
  XFile? image;
  BackCropVoterID(this.image);

  @override
  State<BackCropVoterID> createState() => _BackCropVoterIDState();
}

class _BackCropVoterIDState extends State<BackCropVoterID> {

  bool data=false;
  bool temp = false;
  XFile? image ;

  final cropcontroller = CropController(defaultCrop: Rect.fromLTRB(0, 0, 1, 1),);

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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: grey.shade400.withOpacity(0.8),elevation: 0,
        title: Text("Confirm Voter ID",style: myTextStyle700.copyWith(color: white),),
      ),

      bottomSheet:  Container(
          height: 16.h,width: double.infinity,
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(height: 1.h,),
              Text("Make sure the photo is not blurry",style: myTextStyle500),
              SizedBox(height: 2.h,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: () async {
                    permission();
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return BackVoterIdCard();
                    },));
                  }, child: Text("Retake",style: myTextStyle700.copyWith(fontWeight: FontWeight.w500,color: kPrimaryColor,fontSize: 15),),
                    style: ElevatedButton.styleFrom(side: BorderSide(color: kPrimaryColor),backgroundColor: white,fixedSize: Size(40.w, 6.h)),),
                  ElevatedButton(onPressed: () async {
                    permission();
                    final img = await cropcontroller.croppedImage();
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return BackConfirmVoterID(img);
                    },));
                  },
                    style: ElevatedButton.styleFrom(backgroundColor: kPrimaryColor,fixedSize: Size(40.w, 6.h)),
                    child: Text("Crop",style: myTextStyle700.copyWith(fontWeight: FontWeight.w500,fontSize: 15),),),
                ],
              ),
            ],
          )
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(height:double.infinity,width: double.infinity,color: grey.shade400.withOpacity(0.8),),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(bottom: 10.h),height:60.h,width: 80.w,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child:  CropImage(controller: cropcontroller,
                        image: Image(fit: BoxFit.fill,image: FileImage(File(widget.image!.path) ))),
                  ),
                ),),
            ),
          ],
        ),
      ),
    );
  }
}
