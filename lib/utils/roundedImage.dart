import'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget myRoundedImage(String image,BuildContext context){
  return InkWell(
    onTap: () {
        showDialog(context: context, builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
              height: 310.h,
              width: 300.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 220.h,
                    width: 220.h,
                    child: Image.asset(image),
                  ),
                  OutlinedButton(onPressed: () {
                    Navigator.pop(context);
                  }, child: Text("Close"))
                ],
              ),
            ),
          );
        },);
    },
    child: Container(
        height: 45.h,
        width: 45.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10)
        ),
        child: Image.asset(fit: BoxFit.fill,'assets/adhaar/image 51.png')
    ),
  );
}