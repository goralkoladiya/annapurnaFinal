import 'dart:io';
import 'package:annapurna225/Screens/OCR%20Screen/Aadhaar%20Card/Single%20Side/Add%20Aadhar%20Card.dart';
import 'package:annapurna225/Screens/OCR%20Screen/Add%20Client/Add%20Client.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sizer/sizer.dart';

import '../../../../components/constants.dart';

class ConfirmAadhaar extends StatefulWidget {
  final image;
  ConfirmAadhaar([this.image]);

  @override
  State<ConfirmAadhaar> createState() => _ConfirmAadhaarState();
}

class _ConfirmAadhaarState extends State<ConfirmAadhaar> {

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
        title: Text("Confirm Aadhaar Card",style: myTextStyle700.copyWith(color: white),),
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
                    return AddAadhaar();
                  },));
                }, child: Text("Retake",style: myTextStyle700.copyWith(fontWeight: FontWeight.w500,color: kPrimaryColor),),
                  style: ElevatedButton.styleFrom(side: BorderSide(color: kPrimaryColor),backgroundColor: white,fixedSize: Size(40.w, 6.h)),),
                ElevatedButton(onPressed: () async {
                  permission();
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return AddClient(null,2);
                  },));
                },
                  style: ElevatedButton.styleFrom(backgroundColor: kPrimaryColor,fixedSize: Size(40.w, 6.h)),
                  child: Text("Confirm",style: myTextStyle700.copyWith(fontWeight: FontWeight.w500),),),
              ],
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [Container(height:double.infinity,width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(fit: BoxFit.fill,
                    image: widget.image.image
                )
            ),),
            Container(height:double.infinity,width: double.infinity,color: Color.fromRGBO(0, 0, 0, 0.8),),
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
