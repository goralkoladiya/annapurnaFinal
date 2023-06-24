import 'package:annapurna225/components/TextBtnWidget.dart';
import 'package:annapurna225/components/constants.dart';
import 'package:annapurna225/components/dialog.dart';
import 'package:annapurna225/components/dropdown_widget.dart';
import 'package:annapurna225/newApplicationPage/centerAddressPage.dart';
import 'package:annapurna225/utils/roundedImage.dart';
import 'package:annapurna225/utils/strings.dart';
import 'package:annapurna225/widgets/ab_text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewApplicationPage extends StatefulWidget {
  const NewApplicationPage({Key? key}) : super(key: key);

  @override
  State<NewApplicationPage> createState() => _NewApplicationPageState();
}

class _NewApplicationPageState extends State<NewApplicationPage> {
  TextEditingController  panIdController=TextEditingController();
  TextEditingController  appliedAmountController=TextEditingController();
  List data=["Education","Freelancing","Job","Work"];
  String i="Education";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        actions: [
          Builder(builder: (context) =>
              Expanded(
                child: IconButton(
                  color: black,
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: ImageIcon(AssetImage("assets/dasboardimg/Hamburger.png")),
                ),
              ),
          ),
          Expanded(flex: 2,
            child: Image.asset(
              "assets/dasboardimg/image 3.png",
              width: 90,
            ),
          ),
          SizedBox(width: 40),
          Expanded(
            child: IconButton(
                color: black,
                onPressed: () {},
                icon: ImageIcon(AssetImage("assets/dasboardimg/Group 148.png"))),
          ),
          Expanded(
            child: PopupMenuButton(
              icon: ImageIcon(
                AssetImage("assets/dasboardimg/Group 149.png"),
                color: Colors.black,
              ),
              onSelected: (value) {
                switch (value) {
                  case 1:
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePassword(),));
                    break;
                  case 2:
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Logout(),));
                    break;
                }
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                    value: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Change Password",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 15,
                        )
                      ],
                    )),
                const PopupMenuItem(
                    value: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Logout",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 15,
                        )
                      ],
                    )),
              ],
              offset: Offset(0.0, AppBar().preferredSize.height + 5),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: PopupMenuButton(
              icon: ImageIcon(AssetImage("assets/dasboardimg/Group 150.png"),
                  color: Colors.black),
              onSelected: (value) {
                switch (value) {
                  case 1:
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: SizedBox(
                            height: 36.h,
                            width: 90.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Contact Us",
                                  style: myTextstye,
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            border: Border.all(color: grey),
                                            borderRadius:
                                            BorderRadius.circular(10)),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                                "assets/dasboardimg/call 1.png"),
                                            SizedBox(
                                              height: 1.h,
                                            ),
                                            Text(
                                              "Support No",
                                              style: myTextStyle600a.copyWith(
                                                  color: grey),
                                            ),
                                            SizedBox(
                                              height: 1.h,
                                            ),
                                            Text(
                                              "+91 8712459603",
                                              style: myTextStyle600a,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 1.h,
                                    ),
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            border: Border.all(color: grey),
                                            borderRadius:
                                            BorderRadius.circular(10)),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                                "assets/dasboardimg/mail.png"),
                                            SizedBox(
                                              height: 1.h,
                                            ),
                                            Text(
                                              "Email Address",
                                              style: myTextStyle600a.copyWith(
                                                  color: grey),
                                            ),
                                            SizedBox(
                                              height: 1.h,
                                            ),
                                            Text(
                                              "support@annapurna.com",
                                              style: myTextStyle600a,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                TextBtnWidget(
                                  name: "Close",
                                  btnColor: white,
                                  borderColor: kPrimaryColor,
                                  textColor: kPrimaryColor,
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                    break;
                  case 2:
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Logout(),));
                    break;
                }
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                    value: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Contact Us",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 15,
                        )
                      ],
                    )),
                const PopupMenuItem(
                    value: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "FAQs",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 15,
                        )
                      ],
                    )),
                const PopupMenuItem(
                    value: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Videos",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 15,
                        )
                      ],
                    )),
              ],
              offset: Offset(0.0, AppBar().preferredSize.height + 5),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
              ),
            ),
          ),
          Expanded(flex: 2,
            child: Center(
              child: Text(
                "Vivek s.",
                style: myTextstye1.copyWith(fontSize: 14),
              ),
            ),
          ),
          Expanded(
            child: IconButton(
                color: black,
                onPressed: () {},
                icon: const Icon(
                  Icons.keyboard_arrow_down_rounded,
                  size: 15,
                )),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding,horizontal: defaultPadding),
            child: Container(
              height: 40.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(height: 52,
                    margin: EdgeInsets.only(right: 1),
                    width: 109.w,
                    decoration: BoxDecoration(
                      color: Color(0xFFEAEAEA),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextButton(onPressed: () {

                    }, child: Text("Basic details (Borrower)",style: myTextStyle100)),
                  ),
                  Container(height: 52,
                    margin: EdgeInsets.only(right: 1),
                    width: 110.w,
                    decoration: BoxDecoration(
                        color: Color(0xFFEAEAEA),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextButton(onPressed: () {

                    }, child: Text("Earning member details",style: myTextStyle100)),
                  ),
                  Container(height: 52,
                    width: 109.w,
                    decoration: BoxDecoration(
                        color: Color(0xFFEAEAEA),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextButton(onPressed: () {

                    }, child: Text("Household details",style: myTextStyle100)),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: myRoundedImage('assets/adhaar/image 49.png',context)
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name",style: myTextStyle100,),
                    Text("Sandeep Sharma",style: myTextStyle500,)
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Icon(Icons.person_add_alt_outlined,color: kPrimaryColor,),
                    Text("Add Earning Member",style: TextStyle(color: kPrimaryColor,decoration: TextDecoration.underline),)
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: defaultPadding,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Spouse",style: myTextStyle100,),
                    Text("Lata Kumari",style: myTextStyle500,)
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Father",style: myTextStyle100,),
                    Text("Sandeep Sharma",style: myTextStyle500,)
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mobile Number",style: myTextStyle100,),
                    Text("+91-9897098970",style: myTextStyle500,)
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: defaultPadding,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("POI KYC Type",style: myTextStyle100,),
                    Text("Voter ID",style: myTextStyle500,)
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("POI KYC ID",style: myTextStyle100,),
                    Text("123456789",style: myTextStyle500,)
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("KYC Images",style: myTextStyle100,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.image,color: kPrimaryColor),
                        Text("Click Here",style: TextStyle(color: kPrimaryColor,decoration: TextDecoration.underline),)
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: defaultPadding,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text("Earning Memvers",style: myTextStyle100,),
                    Text("2",style: myTextStyle500,)
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h,),
          Text("Images Data",style: myTextStyle700,),
          SizedBox(height: 10.h,),
          Text("Click on the thumbnail for full images preview",style: myTextStyle600,),
          SizedBox(height: 10.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              myRoundedImage('assets/adhaar/image 50.png', context),
              myRoundedImage("assets/adhaar/image 50.png", context),
              myRoundedImage("assets/adhaar/image 50.png", context),
              myRoundedImage("assets/adhaar/image 51.png", context),
              myRoundedImage("assets/adhaar/image 51.png", context),
            ],
          ),
          SizedBox(height: defaultPadding,),
          Row(
            children: [
                Expanded(child: ABTextInput(
                  controller: panIdController,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: Strings.panId,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter username';
                    }return null;
                  },
                  hintText: "PAN ID",
                ),),
              Expanded(
                child: dropdown_widget(
                  value: i,
                  name: Strings.loanPurpose,
                  onChanged: (p0) {
                    setState(() {
                      i=p0!;
                    });
                  },
                  data: data,
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(child: ABTextInput(
                autoValidator: AutovalidateMode.onUserInteraction,
                titleText: Strings.appliedAmount,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter username';
                  }return null;
                },
                hintText: "20,000",
              ),),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: defaultPadding),
            child: Container(
              height: 45.h,
              width:220.w,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: kPrimaryColor),onPressed: () {
                    myDiloag2(context, 'assets/images/fee.png', "Proceed With Single Earning Member?", "Yes", (){
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CenterAddressPage()));
                    }, "No",(){
                      Navigator.pop(context);
                    } );
              }, child: Text("Next")),
            ),
          )
        ],
      ),
    );
  }
}