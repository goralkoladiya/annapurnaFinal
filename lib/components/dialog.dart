import 'package:annapurna225/components/TextBtnWidget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'constants.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
myDiloag(BuildContext context,String image,message,btname,press,{double? imgsize,double? boxheight}){
  showDialog(context: context, builder: (context) {
    return AlertDialog(
      content: SizedBox(
        height: boxheight?.h ??38.h,width: 100.w,
        child: Column(
          children: [
            Image(width: imgsize ?? 100,image: AssetImage(image)),
            SizedBox(height: 2.h,),
            Text(message, style: myTextstye,textAlign: TextAlign.center,),
            SizedBox(height: 3.h,),
            TextBtnWidget(name: btname, onTap: press,)
          ],
        ),
      ),
    );
  },);
}

myDiloag2(BuildContext context,String image,message,btname,press,btname2,press2,{double? imgsize,double? boxheight}){
  showDialog(context: context, builder: (context) {
    return AlertDialog(
      content: SizedBox(
        height: boxheight?.h ??44.h,width: 90.w,
        child: Column(
          children: [
            Image(width: imgsize ?? 100,image: AssetImage(image)),
            SizedBox(height: 2.h,),
            Text(message, style: myTextstye,textAlign: TextAlign.center,),
            SizedBox(height: 3.h,),
            TextBtnWidget(name: btname, onTap: press,),
            SizedBox(height: 2.h,),
            TextBtnWidget(name: btname2, onTap: press2,btnColor: Colors.white,textColor: kPrimaryColor,borderColor: kPrimaryColor,)
          ],
        ),
      ),
    );
  },);
}
myDiloag23(BuildContext context,String image,message,btname,press,btname2,press2){
  showDialog(context: context, builder: (context) {
    return AlertDialog(
      content: SizedBox(
        height: 50.h,width: 90.w,
        child: Column(
          children: [
            Image(image: AssetImage(image)),
            SizedBox(height: 2.h,),
            Text(message, style: myTextstye,textAlign: TextAlign.center,),
            SizedBox(height: 3.h,),
            TextBtnWidget(name: btname, onTap: press,),
            SizedBox(height: 2.h,),
            TextBtnWidget(name: btname2, onTap: press2,)
          ],
        ),
      ),
    );
  },);
}
myDiloag24(BuildContext context,String image,message,btname,press,btname2,press2){
  showDialog(context: context, builder: (context) {
    return AlertDialog(
      content: SizedBox(
        height: 50.h,width: 90.w,
        child: Column(
          children: [
            Image(image: AssetImage(image)),
            SizedBox(height: 2.h,),
            Text(message, style: myTextStyle600a,textAlign: TextAlign.center,),
            SizedBox(height: 3.h,),
            TextBtnWidget(name: btname, onTap: press,),
            SizedBox(height: 2.h,),
            TextBtnWidget(name: btname2, onTap: press2,)
          ],
        ),
      ),
    );
  },);
}
myDialogOtp(BuildContext context,String image,message,btname,press,btname2,press2){
  showDialog(context: context, builder: (context) {
    return AlertDialog(
      content: SizedBox(
        height: 45.h,width: 90.w,
        child: Column(
          children: [
            Image(image: AssetImage(image)),
            SizedBox(height: 2.h,),
            Text(message, style: myTextStyle600a,textAlign: TextAlign.center,),
            SizedBox(height: 3.h,),
            OTPTextField(
              margin: EdgeInsets.symmetric(horizontal: 1),
              // contentPadding: ,
              length: 6,
              width: MediaQuery.of(context).size.width,
              fieldWidth: 4.h,
              style: TextStyle(
                  fontSize: 2.h
              ),
              textFieldAlignment: MainAxisAlignment.center,
              fieldStyle: FieldStyle.box,
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
            ),
            SizedBox(height: 3.h,),
            TextBtnWidget(name: btname, onTap: press,),
            SizedBox(height: 2.h,),
            TextBtnWidget(name: btname2, onTap: press2,)
          ],
        ),
      ),
    );
  },);
}
myDialog3(BuildContext context,String image,String text,String buttonText,double height,double width){
  showDialog(context: context, builder: (context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 10,
      child: Container(
        height: height,
        width: width,
        decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(image),
            Text("${text}"),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: defaultPadding,right: defaultPadding),
                    child: OutlinedButton(onPressed: () {
                      Navigator.pop(context);
                    }, child: Text("${buttonText}",style: TextStyle(color: kPrimaryColor),)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  },);
}