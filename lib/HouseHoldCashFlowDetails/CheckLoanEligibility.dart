import 'package:annapurna225/components/dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/TextBtnWidget.dart';
import '../components/constants.dart';
import '../widgets/ab_button.dart';

class CheckLoanEligibility extends StatefulWidget {
  const CheckLoanEligibility({Key? key}) : super(key: key);

  @override
  State<CheckLoanEligibility> createState() => _CheckLoanEligibilityState();
}

class _CheckLoanEligibilityState extends State<CheckLoanEligibility> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        title: Text("Household",overflow: TextOverflow.ellipsis,style: TextStyle(color: black),),
        actions: [
          // SizedBox(width: 10),
          IconButton(
              color: black,
              onPressed: () {},
              icon: ImageIcon(AssetImage("assets/dasboardimg/Group 148.png"))),

          PopupMenuButton(
            icon: ImageIcon(AssetImage("assets/dasboardimg/Group 149.png"),color: Colors.black,),
            onSelected: (value) {
              switch (value) {
                case 1:
                // Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePassword(),));
                  break;
                case 2:
                // Navigator.push(context, MaterialPageRoute(builder: (context) => Logout(),));
                  break;
              }
            },itemBuilder: (context) =>
          [
            const PopupMenuItem(value: 1,child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Change Password",style: TextStyle(fontWeight: FontWeight.w500),),
                Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15,)
              ],
            )),
            const PopupMenuItem(value: 2,child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Logout",style: TextStyle(fontWeight: FontWeight.w500),),
                Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15,)
              ],
            )),

          ],),

          PopupMenuButton(
            icon: ImageIcon(AssetImage("assets/dasboardimg/Group 150.png"),color: Colors.black),
            onSelected: (value) {
              switch (value) {
                case 1:
                  showDialog(context: context, builder: (context) {
                    return AlertDialog(
                      content: SizedBox(
                        height: 38.h,width: 90.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Contact Us", style: myTextstye,textAlign: TextAlign.center,),
                            SizedBox(height: 3.h,),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: grey),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Column( crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image.asset("assets/dasboardimg/call 1.png"),
                                      Text("Support No"),
                                      Text("+91 8712459603"),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 3.h,),
                            TextBtnWidget(name: "Close",btnColor: white,borderColor: kPrimaryColor,onTap: () {

                            },)
                          ],
                        ),
                      ),
                    );
                  },);
                  break;
                case 2:
                // Navigator.push(context, MaterialPageRoute(builder: (context) => Logout(),));
                  break;
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(value: 1,child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Contact Us",style: TextStyle(fontWeight: FontWeight.w500),),
                  Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15,)
                ],
              )),
              const PopupMenuItem(value: 2,child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("FAQs",style: TextStyle(fontWeight: FontWeight.w500),),
                  Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15,)
                ],
              )),
              const PopupMenuItem(value: 3,child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Videos",style: TextStyle(fontWeight: FontWeight.w500),),
                  Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15,)
                ],
              )),

            ],
            offset: Offset(0.0, AppBar().preferredSize.height+5),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
              ),
            ),),

          Center(
            child: Text(
              "Vivek s.",
              style: myTextstye1.copyWith(fontSize: 14),
            ),
          ),
          IconButton(
              color: black,
              onPressed: () {},
              icon: const Icon(Icons.keyboard_arrow_down_rounded,size: 15,))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: Row(
              children: [
                TextButton(onPressed: (){}, child: Text("HH Monthly Income",style:  myTextStyle600,)),
                TextButton(onPressed: (){}, child: Text("HH Expenses",
                  style: myTextStyle600,)),
                TextButton(onPressed: (){}, child: Text("HH Liability",
                  style: myTextStyle600,)),
                TextButton(onPressed: (){}, child: Text("Loan Eligibility",
                  style: myTextStyle600,)),
              ],
            ),
          ),
          Card(
            elevation: 5,
            child: Container(
              color: Colors.black12,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //SizedBox(width: 20,),
                      Text("Member Loan cycle", style: myTextStyllibility,),
                      //SizedBox(width: 50,),
                      Text("ROI",style: myTextStyllibility,
                      ),
                      //SizedBox(width:70 ,),
                      Text(
                        "EMI Eligibility",
                        style: myTextStyllibility,
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //SizedBox(width: 20,),
                      Text(
                        "1",
                        style:myTextStyleliability2,

                      ),
                      Text(
                        "-",
                        style: myTextStyleliability2,
                      ),
                      //SizedBox(width:70 ,),
                      Text(
                        "-",
                        style: myTextStyleliability2,
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 35,),
                      Text(
                        "Loan Eligibility",
                        style: myTextStyllibility,
                      ),
                      SizedBox(width: 65,),
                      Text(
                        "Tenure",
                        style: myTextStyllibility,
                      ),
                      //SizedBox(width:70 ,),
                      // Text(
                      //   "EMI Eligibility",
                      //   style: myTextStyllibility,
                      // ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 55,),
                      Text(
                        "-",
                        style:myTextStyleliability2,
                      ),
                      SizedBox(width: 125,),
                      Text(
                        "-",
                        style: myTextStyleliability2,
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          OutlinedButton(onPressed: (){},style: OutlinedButton.styleFrom(side: BorderSide(color:kPrimaryColor)) ,child:Text("Check Loan Eligibility",style: TextStyle(color: Color.fromRGBO(123, 114, 114, 1)),)),
          SizedBox(height: 15,),
          Container(height: 70,width: 230,
            child: ABButton(
                paddingTop: MediaQuery.of(context).size.height * 0.0225,
                paddingBottom: 15.0,
                paddingLeft: 20.0,
                paddingRight: 20.0,
                text: 'Save & Next',
                onPressed: () {
                        myDiloag(context, "assets/Done.png", "Loan Eligibility Check done Successful!", "Okay", (){
                          Navigator.pop(context);
                        });
                },),
          ),
        ],
      ),
    );
  }

}
