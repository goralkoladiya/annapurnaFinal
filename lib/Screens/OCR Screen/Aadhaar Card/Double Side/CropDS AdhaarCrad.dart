import 'dart:io';
import 'package:annapurna225/Screens/OCR%20Screen/Aadhaar%20Card/Double%20Side/AddDouble%20Side.dart';
import 'package:annapurna225/Screens/OCR%20Screen/VoterID%20Front/Add%20VoterID.dart';
import 'package:camera/camera.dart';
import 'package:crop_image/crop_image.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sizer/sizer.dart';
import '../../../../components/constants.dart';
import 'ConfirmDB AadhaarCard.dart';

class Crop2SAadhaar extends StatefulWidget {
  XFile? image;
  Crop2SAadhaar(this.image);

  @override
  State<Crop2SAadhaar> createState() => _Crop2SAadhaarState();
}

class _Crop2SAadhaarState extends State<Crop2SAadhaar> {

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
        title: Text("Confirm Aadhhar Card",style: myTextStyle700.copyWith(color: white),),
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
                      return Add2SAadhaar();
                    },));
                  }, child: Text("Retake",style: myTextStyle700.copyWith(fontWeight: FontWeight.w500,color: kPrimaryColor),),
                    style: ElevatedButton.styleFrom(side: BorderSide(color: kPrimaryColor),backgroundColor: white,fixedSize: Size(40.w, 6.h)),),
                  ElevatedButton(onPressed: () async {
                    permission();
                    final img = await cropcontroller.croppedImage();

                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return Confirm2SAadhaar(img);
                    },));
                  },
                    style: ElevatedButton.styleFrom(backgroundColor: kPrimaryColor,fixedSize: Size(40.w, 6.h)),
                    child: Text("Crop",style: myTextStyle700.copyWith(fontWeight: FontWeight.w500),),),
                ],
              ),
            ],
          )
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(height:double.infinity,width: double.infinity,color: grey.shade400.withOpacity(0.8),),
            Container(height:double.infinity,width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(fit: BoxFit.fill,
                      image: FileImage(File(widget.image!.path) )
                  )
              ),),
            Container(height:double.infinity,width: double.infinity,color: Color.fromRGBO(0, 0, 0, 0.8),),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(bottom: 10.h,left: 1.h,right: 1.h),height:30.h,width: 100.w,
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