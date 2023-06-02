import 'dart:io';

import 'package:annapurna225/Screens/OCR%20Screen/Aadhaar%20Card/Single%20Side/Add%20Aadhar%20Card.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sizer/sizer.dart';
import '../../../components/TextBtnWidget.dart';
import '../../../components/TextFieldWidget.dart';
import '../../../components/constants.dart';
import '../../../components/dialog.dart';
import '../../../components/dropdown_widget.dart';
import '../Aadhaar Card/Aadhaar Card.dart';
import '../VoterID Front/Add VoterID.dart';
import 'CaptureImage.dart';


int index=0;
int selectedIndex=0;

class AddClient extends StatefulWidget {
  XFile? image;
  int? Index;
  AddClient([this.image,this.Index]);

  @override
  State<AddClient> createState() => _AddClientState();
}

class _AddClientState extends State<AddClient> with TickerProviderStateMixin {

  permission() async {
    var status = await Permission.camera.status;
    if (status.isDenied) {
      Map<Permission, PermissionStatus> statuses = await [
        Permission.camera,
        Permission.storage,
      ].request();
    }
  }

  redirect() async {
    if (widget.image!=null) {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        await showDialog(context: context, builder: (context) {
          return AlertDialog(
            content: SizedBox(
              height: 180,
              child: Column(
                children: [
                  Image(image: AssetImage("assets/Done.png")),
                  SizedBox(height: 2.h,),
                  Text("Photo Captured successfully!", style: myTextStyle500,)
                ],
              ),
            ),
          );
        },);
      });
      await Future.delayed(const Duration(seconds: 2));
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return VoterIdCard();
      },));
    }
  }
  TabController? tabcontroller ;
  int tabIndex=0;

  @override
  void initState() {
    super.initState();
    tabcontroller = TabController(initialIndex: tabIndex,length: 2, vsync: this);
    redirect();
    selectedIndex = widget.Index ?? 0;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        title: const Text("Add New Client",style: TextStyle(color: black),),
        backgroundColor: white,
        actions: [

          IconButton(
              color: black,
              onPressed: () {},
              icon: ImageIcon(AssetImage("assets/dasboardimg/Group 148.png"),size: 18,)),
          IconButton(
              color: black,
              onPressed: () {},
              icon: ImageIcon(AssetImage("assets/dasboardimg/Group 149.png"),size: 18)),
          IconButton(
              color: black,
              onPressed: () {},
              icon: ImageIcon(AssetImage("assets/dasboardimg/Group 150.png"),size: 18)),
          Center(child: Text(
              "Vivek s.", style: myTextstye1.copyWith(fontSize: 12),),
          ),
          IconButton(
              color: black,
              onPressed: () {},
              icon: Icon(Icons.keyboard_arrow_down_rounded,size: 18,))
        ],
      ),
      body: Stack(
        children: [
          const Image(image: AssetImage("assets/Rectangle.png")),
          Container(margin: const EdgeInsets.all(15),padding: const EdgeInsets.all(18),
            height: 90.h,width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow( offset: Offset(0, 2),color: grey.shade200,blurRadius: 2)]
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(1.h),
                      height: 5.h,
                      decoration: BoxDecoration(
                        color: (selectedIndex>=1) ? kPrimaryColor : grey.shade200,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text("Client Picture",style: myTextStyle600.copyWith(color: (selectedIndex>=1) ? white : black)),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(1.h),
                      height: 5.h,
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      decoration: BoxDecoration(
                          color: (selectedIndex>=2) ? kPrimaryColor : grey.shade200,
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Text("ID Verificaton",style: myTextStyle600.copyWith(color: (selectedIndex>=2) ? white : black)),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(1.h),
                      height: 5.h,
                      decoration: BoxDecoration(
                          color: (selectedIndex==3) ? kPrimaryColor :  grey.shade200,
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Text("OKYC Profile Review",style: myTextStyle600.copyWith(color: (selectedIndex==3) ? white : black),),
                    ),
                  ],
                ),
                (selectedIndex==0) ? Column(
                  children: [
                    SizedBox(height: 3.h,),
                    Text("Capture Client Photo",style: myTextStyle700,),
                    SizedBox(height: 1.h,),
                    Text("Make sure the customer’s face aligned and\n towards the camera!",style: myTextStyle600a,textAlign: TextAlign.center,),
                    SizedBox(height: 5.h,),
                    const CircleAvatar(backgroundColor: green,radius: 110,
                        child: CircleAvatar(backgroundColor: white,radius: 100,
                            child: CircleAvatar(backgroundImage: AssetImage("assets/Vector (1).png"),radius: 90,backgroundColor: gray,))),
                    SizedBox(height: 5.h,),
                    TextBtnWidget(name: 'Open Camera',btnColor: kPrimaryColor,
                      onTap: () async {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                          return  camera();
                        },));
                      },),
                  ],
                )
                    : (index==0 ) ? Expanded(child: Column(
                                children: [
                                  SizedBox(height: 3.h,),
                                  Text((tabIndex==1) ? "Capture Aadhaar Card" : "Please verify your ID", style: myTextStyle700.copyWith(fontSize: 20),),
                                  SizedBox(height: 1.h,),
                                  Text((tabIndex==1) ? "Select one of the options to complete the process" : "", style: myTextStyle600a,),
                                  TabBar(
                                    indicatorSize: TabBarIndicatorSize.label,
                                    indicatorColor: black,indicatorWeight: 5,
                                    controller: tabcontroller,
                                    labelPadding: const EdgeInsets.all(5),

                                    onTap: (value) {
                                      tabIndex = value;
                                      setState(() {});
                                    },
                                    tabs: [
                                      Tab(
                                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: 18,width: 18,
                                                child: Center(
                                                    child: Text("1",style: TextStyle(color: Colors.white),)),
                                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.black),),
                                              SizedBox(width: 2.w,),
                                              Text("Voter ID Card", style: TextStyle(color: Colors.black),),
                                            ],
                                          )),
                                      Tab(
                                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: 18,width: 18,
                                                child: Center(
                                                    child: Text("2",style: TextStyle(color: Colors.white),)),
                                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.black),),
                                              SizedBox(width: 2.w,),
                                              Text("Adhar Card", style: TextStyle(color: Colors.black),),
                                            ],
                                          )),
                                    ],
                                  ),

                                  (tabIndex==0) ? VoterIDCardSection() : AadhaarCard()
                                ],
                      ))
                : EditVoterID(),
              ],
            ),
          )
        ],
      )
    );
  }
}

class VoterIDCardSection extends StatefulWidget {
  const VoterIDCardSection({Key? key}) : super(key: key);

  @override
  State<VoterIDCardSection> createState() => _VoterIDCardSectionState();
}

class _VoterIDCardSectionState extends State<VoterIDCardSection> {
  @override
  Widget build(BuildContext context) {
    return  Expanded(
          child: SingleChildScrollView(
            child: Column(
                children: [
                  SizedBox(height: 2.h,),
                  Text((selectedIndex==2) ? "Aadhaar Card Output" : "Voter ID Output", style: myTextStyle700.copyWith(fontSize: 16),),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    height: 48.h,
                    width: 100.w,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: gray),
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Address",
                          style: TextStyle(fontSize: 12, color: grey),
                        ),
                        Text(
                          "Village/Locality - Dakarangia G. Pitown -\n Greesingia P.S. - G.Udayagiri",
                          style: myTextStyle500.copyWith(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 2.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Age",
                                  style: TextStyle(fontSize: 12, color: grey),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 12),
                                  child: Text(
                                    "30",
                                    style: myTextStyle500.copyWith(
                                        fontSize: 13, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Text(
                                  "Father’s Name",
                                  style: TextStyle(fontSize: 12, color: grey),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 12),
                                  child: Text(
                                    "Ranjit Kumar",
                                    style: myTextStyle500.copyWith(
                                        fontSize: 13, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Text(
                                  "ID No.",
                                  style: TextStyle(fontSize: 12, color: grey),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 12),
                                  child: Text(
                                    "AEY129873",
                                    style: myTextStyle500.copyWith(
                                        fontSize: 13, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Text(
                                  "State",
                                  style: TextStyle(fontSize: 12, color: grey),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 12),
                                  child: Text(
                                    "Odisha",
                                    style: myTextStyle500.copyWith(
                                        fontSize: 13, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Text(
                                  "District",
                                  style: TextStyle(fontSize: 12, color: grey),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 12),
                                  child: Text(
                                    "Kandhamal",
                                    style: myTextStyle500.copyWith(
                                        fontSize: 13, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Text(
                                  "Pin code",
                                  style: TextStyle(fontSize: 12, color: grey),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 12),
                                  child: Text(
                                    "63550",
                                    style: myTextStyle500.copyWith(
                                        fontSize: 13, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Date of Birth",
                                  style: TextStyle(fontSize: 12, color: grey),
                                ),
                                Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, bottom: 12),
                                    child: Text(
                                      "05 Apr 1990",
                                      style: myTextStyle500.copyWith(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    )),
                                const Text(
                                  "Gender",
                                  style: TextStyle(fontSize: 12, color: grey),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 12),
                                  child: Text(
                                    "Male",
                                    style: myTextStyle500.copyWith(
                                        fontSize: 13, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Text(
                                  "Name",
                                  style: TextStyle(fontSize: 12, color: grey),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 12),
                                  child: Text(
                                    "Jay Prakash",
                                    style: myTextStyle500.copyWith(
                                        fontSize: 13, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Text(
                                  "Year of Birth",
                                  style: TextStyle(fontSize: 12, color: grey),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 12),
                                  child: Text(
                                    "1991",
                                    style: myTextStyle500.copyWith(
                                        fontSize: 13, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Text(
                                  "House No.",
                                  style: TextStyle(fontSize: 12, color: grey),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 12),
                                  child: Text(
                                    "G12",
                                    style: myTextStyle500.copyWith(
                                        fontSize: 13, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(height: 6.h)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        index = 1;
                        setState(() {});
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                          return AddClient();
                        },));
                      },
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.edit,color: Color(0xff442477,),size: 20,),
                          SizedBox(width: 1.w,),
                          const Text(
                            "Edit Information",
                            style: TextStyle(
                              color: kPrimaryColor,
                            ),
                          ),
                        ],
                      )),

                  (selectedIndex == 1 ) ? TextBtnWidget(
                    name: "VID Verification",
                    onTap: () {
                        WidgetsBinding.instance.addPostFrameCallback((_) async {
                          await myDiloag(
                              context, done, "Voter ID Captured Successfully", "Okay", () {
                            Navigator.pop(context);
                          });
                        });
                        }
                  ) : (selectedIndex==2) ?
                  TextBtnWidget(
                      name: "VID Verification",
                      onTap: () {
                        WidgetsBinding.instance.addPostFrameCallback((_) async {
                          await myDiloag(
                              context, done, "Aadhaar Card Captured Successfully", "Okay", () {
                            Navigator.pop(context);
                          });
                        });
                      }
                  ) :
                  TextBtnWidget(
                    name: "Confirm",
                    onTap: () {},
                  )
                ],
              ),
          ),
        );
  }
}


class EditVoterID extends StatefulWidget {
   EditVoterID({Key? key}) : super(key: key);

  @override
  State<EditVoterID> createState() => _EditVoterIDState();
}

class _EditVoterIDState extends State<EditVoterID> {
  TextEditingController address = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController dob = TextEditingController();
  TextEditingController district = TextEditingController();
  TextEditingController father = TextEditingController();
  TextEditingController hno = TextEditingController();
  TextEditingController idno = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController pincode = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController year = TextEditingController();



  String? Gender;
  List gender = [
    "Male",
    "Female",
    "Other",
  ];
  @override
  void initState() {
    super.initState();
    Gender=gender[0];
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          SizedBox(height: 3.h,),
          Text("Edit Information", style: myTextStyle700.copyWith(fontSize: 20),),
          SizedBox(height: 3.h,),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextFieldWidget(
                    isRequired: false, controller: address,
                    name: 'Address',
                  ),
                  SizedBox(height: 2.h),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: TextFieldWidget(
                        isRequired: false, controller: age,
                        name: 'Age',
                      )),
                      Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Date of Birth",style: TextStyle(fontWeight: FontWeight.bold),),
                          Container(padding: EdgeInsets.only(left: 5,top: 2,bottom: 2),
                            decoration: BoxDecoration(
                                border: Border.all(color: gray),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: TextField(
                              controller: dob,
                              decoration: InputDecoration(border: InputBorder.none,
                                  hintText: "Select Date",
                                  suffixIcon: IconButton(onPressed: () {}, icon:Icon( Icons.calendar_month_rounded))
                              ),
                            ),
                          ),

                        ],
                      ))
                    ],
                  ),
                  SizedBox(height: 2.h),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: TextFieldWidget(
                        isRequired: false, controller: district,
                        name: 'District',
                      )),
                      Expanded(child: TextFieldWidget(
                        isRequired: false, controller: father,
                        name: 'Father',
                      ))
                    ],
                  ),
                  SizedBox(height: 2.h),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: dropdown_widget(name: 'Gender',data: gender,onChanged: (p0) {
                            setState(() {
                              Gender = p0;
                            });
                          },value: Gender,filledColor: white,)
                      ),

                      Expanded(child: TextFieldWidget(
                        isRequired: false, controller: address,
                        name: 'House No',
                      ))
                    ],
                  ),
                  SizedBox(height: 2.h),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: TextFieldWidget(
                        isRequired: false, controller: idno,
                        name: 'ID No',
                      )),
                      Expanded(child: TextFieldWidget(
                        isRequired: false, controller: name,
                        name: 'Name',
                      ))
                    ],
                  ),
                  SizedBox(height: 2.h),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: TextFieldWidget(
                        isRequired: false, controller: pincode,
                        name: 'Pin Code',
                      )),
                      Expanded(child: TextFieldWidget(
                        isRequired: false, controller: state,
                        name: 'State',
                      ))
                    ],
                  ),
                  SizedBox(height: 2.h),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: TextFieldWidget(
                        isRequired: false, controller: year,
                        name: 'Year Of Birth',
                      )),
                      Expanded(child: Container(),)
                    ],
                  ),
                  SizedBox(height: 2.h,),

                  TextBtnWidget(name: "Update", onTap: () {
                    myDiloag(context,done,"Voter ID Captured \n successfully","Initiate Voter OCR",(){    });
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => AddClient(),));

                    //myDiloag2(context, done, "Voter Verification Failed", "Retry", (){}, "Skip", (){});
                  },)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

