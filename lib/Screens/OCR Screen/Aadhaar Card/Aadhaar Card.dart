
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../components/TextBtnWidget.dart';
import '../../../components/constants.dart';
import 'Double Side/AddDouble Side.dart';
import 'Single Side/Add Aadhar Card.dart';

class AadhaarCard extends StatefulWidget {
  AadhaarCard({Key? key}) : super(key: key);

  @override
  State<AadhaarCard> createState() => _AadhaarCardState();
}

class _AadhaarCardState extends State<AadhaarCard> {
  bool ocr = false , ekyc = false;
  bool verify = false ;
  int Aadhaar = 0;


  String side='';

  @override
  Widget build(BuildContext context) {
    return (Aadhaar==0) ? Column(
      children: [
        SizedBox(height:5.h),
        Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  if (!ocr) {
                    ocr = !ocr;
                    ekyc = false;
                    print(ocr);
                    print(ekyc);
                    setState(() {});
                  }
                },
                child: Container(height: 15.h,width: 100.w,
                  margin: const EdgeInsets.all(5),alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: (ocr) ? kPrimarys : grey.shade100,
                      border: (ocr) ? Border.all(color: kPrimaryColor,) :  Border.all(color: grey,),
                      borderRadius: BorderRadius.circular(10)
                  ), child: Text("Aadhaar OCR",style: myTextstye.copyWith(fontSize: 16),),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  if (!ekyc) {
                    ekyc = !ekyc;
                    ocr = false;
                    print(ekyc);
                    print(ocr);
                    setState(() {});
                  }
                },
                child: Container(height: 15.h,width: 100.w,
                  margin: const EdgeInsets.all(5),alignment: Alignment.center,
                  decoration: BoxDecoration(color: (ekyc) ? kPrimarys : grey.shade100,
                      border: (ekyc) ? Border.all(color: kPrimaryColor,) :  Border.all(color: grey,),
                      borderRadius: BorderRadius.circular(10)
                  ),child: Text("Aadhaar EKYC",style: myTextstye.copyWith(fontSize: 16),),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height:5.h),
        Container(height: 20.h,width: 40.w,
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/Layer_x0020_1.png"))
          ),
        ),
        SizedBox(height:5.h),

        (ocr || ekyc ) ? TextBtnWidget(name: "Proceed",
          onTap: () {
            Aadhaar=1;
            setState(() {});
          }
          ,) :
        TextBtnWidget(name: "Proceed",
          onTap: () {},btnColor: grey,
        ),
      ],
    )
        : Column(
          children: [
          Row(
          children: [
            Radio(value: "Single Side", groupValue: side, onChanged: (value) {
              setState(() {
                side = value!;
              });
            },),
            Text("Single Side"),
            Spacer(),
            Radio(value: "Double Side", groupValue: side, onChanged: (value) {
              setState(() {
                side = value!;
              });
            },),
            Text("Double Side"),
            Spacer(),
          ],
        ),
          Row(
          children: [
            Expanded(child:  Container(
              decoration: (side=="Single Side") ? BoxDecoration(
                  border: Border.all(color: kPrimaryColor,width: 2),
                  borderRadius: BorderRadius.circular(20)
              ) : const BoxDecoration(),
              child: const Image(image: AssetImage("assets/adhaar/image 49.png")),
            ) ),
            SizedBox(width: 5.w,),
            Expanded(
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: (side=="Double Side") ? BoxDecoration(
                        border: Border.all(color: kPrimaryColor,width: 2),
                        borderRadius: BorderRadius.circular(15)
                    ) : const BoxDecoration(),
                    child: const Image(image: AssetImage("assets/adhaar/image 50.png")),
                  ),
                  SizedBox(height: 2.h,),
                  Container(
                    decoration: (side=="Double Side") ? BoxDecoration(
                        border: Border.all(color: kPrimaryColor,width: 2),
                        borderRadius: BorderRadius.circular(15)
                    ) : const BoxDecoration(),
                    child: const Image(image: AssetImage("assets/adhaar/image 51.png")),
                  )
                ],
              ),
            )
          ],
        ),
          SizedBox(height : 5.h),

          TextBtnWidget(
           name: "Open Camera",
           onTap: () {
             if (side=="Single Side") {
               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AddAadhaar(),));
             }
             else{
               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Add2SAadhaar(),));
             }
          },
        )
      ],
    );
  }
}

