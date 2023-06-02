import 'package:annapurna225/GroupTag/screen2.dart';
import 'package:annapurna225/components/dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/TextBtnWidget.dart';
import '../components/constants.dart';
import '../components/dropdown_widget.dart';
import '../widgets/ab_button.dart';

class Screean1 extends StatefulWidget {
  const Screean1({Key? key}) : super(key: key);

  @override
  State<Screean1> createState() => _Screean1State();
}

class _Screean1State extends State<Screean1> {
  List data=["Education","Freelancing","Job","Work"];
  String i="Education";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: white,
          title: Text("GRT",overflow: TextOverflow.ellipsis,style: TextStyle(color: black),),
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
          children:[
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: dropdown_widget(
                    value: i,
                    name: "Select  village",
                    onChanged: (p0) {
                      setState(() {
                        i=p0!;
                      });
                    },
                    data: data,
                  ),
                ),
                Expanded(
                  child: dropdown_widget(
                    value: i,
                    name: "Select Center",
                    onChanged: (p0) {
                      setState(() {
                        i=p0!;
                      });
                    },
                    data: data,
                  ),
                ),
                Expanded(
                  child: dropdown_widget(
                    value: i,
                    name: "Fco Name",
                    onChanged: (p0) {
                      setState(() {
                        i=p0!;
                      });
                    },
                    data: data,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                  child: OutlinedButton(style: OutlinedButton.styleFrom(side: BorderSide(color: kPrimaryColor)),onPressed: (){}, child: Text("Reset",style: TextStyle(color: kPrimaryColor),)),
                )),
                Expanded(
                  child: ABButton(
                      paddingTop: MediaQuery.of(context).size.height * 0.0225,
                      paddingBottom: 15.0,
                      paddingLeft: 20.0,
                      paddingRight: 20.0,
                      text: 'Save & Next',
                      onPressed: () {
                       // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => othertypeofsource3(),));
                      }),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text("Total Searched (23)"),
              ),
            ],),
            SizedBox(height: 20,),
            Card(
              elevation: 10,
              child: Container(
                height:130,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       Card(
                         elevation: 10,
                         child: Container(
                           color: Color.fromRGBO(246, 246, 247, 1),

                           height: 120,
                           child:  Center(child: Checkbox(value: true, onChanged: (val){})),
                         ),
                       ),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Applicant Name",style:myTextStyllibility,),
                          SizedBox(height: 10,),
                          Text("Jai Prakash",style: myTextStyleliability2,),
                          SizedBox(height: 20,),
                          Text("Group Name",style: myTextStyllibility,),
                          SizedBox(height: 10,),
                          Text("Group one",style: myTextStyleliability2,),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical:15),
                        child: Column(
                          children: [
                            Text("Spouse",style:myTextStyllibility,),
                            SizedBox(height: 10,),
                            Text("Meena",style: myTextStyleliability2,),
                            SizedBox(height: 20,),

                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Column(
                          children: [
                            Text("Voter Id",style:myTextStyllibility,),
                            SizedBox(height: 10,),
                            Text("4567899",style: myTextStyleliability2,),
                            SizedBox(height: 20,),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ),
            ),
            ABButton(
                paddingTop: MediaQuery.of(context).size.height * 0.0225,
                paddingBottom: 15.0,
                paddingLeft: 20.0,
                paddingRight: 20.0,
                text: 'Proceed',
                onPressed: () {
                  myDiloag2(context, "assets/Done.png", "‘Group One’ Group is filled", "Yes, Add New Group", (){
                    Navigator.pop(context);
                    myDiloag(context, "assets/Done.png", "‘Darkrang C2 G1’ created successfully!", "Okay", (){Navigator.pop(context);
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => screen2(),));});
                  }, "Go Back", (){
                  });
                }),
          ],
        ),
    );
  }
}
