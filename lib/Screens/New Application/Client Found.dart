import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../components/constants.dart';
import '../../widgets/ab_button.dart';
import 'Application Proceed.dart';

class ClientFound extends StatefulWidget {
  const ClientFound({Key? key}) : super(key: key);

  @override
  State<ClientFound> createState() => _ClientFoundState();
}

class _ClientFoundState extends State<ClientFound> {
  bool C1=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 7.h,margin: EdgeInsets.all(10),
            decoration: BoxDecoration(color: luccolor, borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                SizedBox(width: 10,),
                Text("Borrower ID", style: myTextStyle500.copyWith(color: lucTextColor),),
                SizedBox(width: 15,),
                Container(
                  height: 5.h,padding: EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: luccolorDark,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text("ABC1245", style: myTextStyle700.copyWith(fontSize: 15, color: black),),
                )
              ],
            ),
          ),
          Card(elevation: 3,
            child: Row(
              children: [
                Container(margin: EdgeInsets.all(5),
                  width: 10.w,height: 18.h,
                  decoration: BoxDecoration(
                    color: fillTextColor,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Checkbox(value: C1,
                    checkColor: white,activeColor: kPrimaryColor,shape: CircleBorder(),
                    onChanged: (value) {
                    C1 = ! C1;
                    setState(() {});
                  },),
                ),
                Expanded(flex: 8,
                  child: Column(
                    children: [
                      Container(margin: EdgeInsets.fromLTRB(0,10,10,0),padding: EdgeInsets.all(7),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Client Name",style: myTextStyle600a.copyWith(color: grey,),),
                                Text("Jai Prakash",style: myTextStyle500.copyWith(fontSize: 13),),
                                SizedBox(height: 2.h),
                                Text("Marital Status",style: myTextStyle600a.copyWith(color: grey),),
                                Text("Married",style: myTextStyle500.copyWith(fontSize: 13),),
                              ],
                            ),

                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Relationship",style: myTextStyle600a.copyWith(color: grey),),
                                Text("Self",style:  myTextStyle500.copyWith(fontSize: 13),),
                                SizedBox(height: 2.h),
                                Text("OCR KYC Profile",style: myTextStyle600a.copyWith(color: grey),),
                                Text("yes",style: myTextStyle500.copyWith(fontSize: 13),),
                              ],
                            ),

                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("PKYC ID",style: myTextStyle600a.copyWith(color: grey,),),
                                Text("14256",style: myTextStyle500.copyWith(fontSize: 13),),
                                SizedBox(height: 2.h),
                                Text("Current Loan Status",style: myTextStyle600a.copyWith(color: grey),),
                                Text("Active",style: myTextStyle500.copyWith(fontSize: 13),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(padding: EdgeInsets.all(7),margin: EdgeInsets.fromLTRB(0,0,10,0),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Village Name",style: myTextStyle600a.copyWith(color: grey),),
                                Text("Village 1",style: myTextStyle500.copyWith(fontSize: 13),),
                              ],
                            ),
                            InkWell(
                              onTap: () {

                              },
                              child: Row(
                                children: [
                                  Icon(Icons.remove_red_eye,color: kPrimaryColor,),SizedBox(width:1.w),
                                  Text("View Household Details",
                                    style: myTextStyle700.copyWith(fontSize: 13,decoration: TextDecoration.underline,color: kPrimaryColor),)
                                ],
                              ),
                            ),
                            Container()
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          ABButton(
            paddingTop: MediaQuery.of(context).size.height * 0.0225,
            paddingBottom: 15.0,
            paddingLeft: 25.0,
            paddingRight: 25.0,
            text: 'Proceed',
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AppliProceed(),));
            },
          )
        ],
      ),
    );
  }
}
