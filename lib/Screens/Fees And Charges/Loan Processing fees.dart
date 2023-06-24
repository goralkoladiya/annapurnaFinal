import 'package:flutter/material.dart';
import 'package:annapurna225/components/dropdown_widget.dart';
import 'package:sizer/sizer.dart';
import '../../components/TextBtnWidget.dart';
import '../../components/TextFieldWidget.dart';
import '../../components/constants.dart';

class LoanProcessing extends StatefulWidget {
  const LoanProcessing({Key? key}) : super(key: key);

  @override
  State<LoanProcessing> createState() => _LoanProcessingState();
}

class _LoanProcessingState extends State<LoanProcessing> {

  TextEditingController dwnPayment = TextEditingController();
  TextEditingController spouseIns = TextEditingController();
  TextEditingController clientIns = TextEditingController();
  String ? product;
  List Product = [
    "CDL",
    "CDL",
    "CDL",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        actions: [
          SizedBox(width: 1.h,),
          Expanded(flex: 4,
              child: Center(child: Text("Loan Processing Fee",style: myTextstye1.copyWith(fontWeight: FontWeight.bold,fontSize: 13),))
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 2.h,),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
              //   child: dropdown_widget(hint: "Select",
              //     name: "Choose Search Type",value: Product,data: product,
              //     onChanged: (p0) {
              //       Product = p0;
              //       setState(() {});
              //     },),
              // ),
              // dropdown_widget(name: "Select Product",value: product,data: Product,hint: "Select Product",
              //     onChanged: (p0) {
              //       product = p0;
              //       setState(() {});
              //     },),
              Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                elevation: 5,
                shadowColor: Colors.black,
                child: Container(margin: EdgeInsets.all(5),padding: EdgeInsets.all(5),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Date",
                                style: myTextStyle600a.copyWith(color: grey),
                              ),
                              SizedBox(
                                height: .5.h,
                              ),
                              Text(
                                "12 oct 1999",
                                style: myTextStyle500.copyWith(fontSize: 14),
                              ),
                              SizedBox(height: 3.h,),
                              Text("Applicant Name", style: myTextStyle600a.copyWith(color: grey),),
                              SizedBox(height: .5.h,),
                              Text(
                                "Jai Prakash",
                                style: myTextStyle500.copyWith(fontSize: 14),
                              ),
                            ],
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Loan ID",
                                style: myTextStyle600a.copyWith(color: grey),
                              ),
                              SizedBox(
                                height: .5.h,
                              ),
                              Text(
                                "1999",
                                style: myTextStyle500.copyWith(fontSize: 14),
                              ),
                              SizedBox(height: 3.h,),
                              Text(
                                "Group Name",
                                style: myTextStyle600a.copyWith(color: grey),
                              ),
                              SizedBox(
                                height: .5.h,
                              ),
                              Text(
                                "Group One",
                                style: myTextStyle500.copyWith(fontSize: 14),
                              ),

                            ],
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Office Order Id",
                                style: myTextStyle600a.copyWith(color: grey),
                              ),
                              SizedBox(
                                height: .5.h,
                              ),
                              Text(
                                "4567899",
                                style: myTextStyle500.copyWith(fontSize: 14),
                              ),
                              SizedBox(height: 3.h,),
                              Text(
                                "",
                                style: myTextStyle600a.copyWith(color: grey),
                              ),
                              SizedBox(
                                height: .5.h,
                              ),
                              Text(
                                "",
                                style: myTextStyle500.copyWith(fontSize: 14),
                              ),
                            ],
                          ),

                        ],
                      ),
                      SizedBox(height: 2.h,),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Present Address",style: myTextStyle600a.copyWith(color: grey),),
                          Text("Village/Locality - Dakarangia G. Pitown- Greesingia P.S. - G.Udayagiri",style: myTextStyle500.copyWith(fontSize: 13),),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                elevation: 5,
                shadowColor: Colors.black,
                child: Column(
                  children: [
                    Container(width: 100.h,height: 5.h,alignment: Alignment.centerLeft,padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      color: grey.shade400,borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))),
                    child: Text("Product details",style: myTextStyle700.copyWith(fontSize: 15),),),
                    Container(margin: EdgeInsets.all(10),padding: EdgeInsets.all(15),
                      decoration:  BoxDecoration(
                          color: grey.shade100,borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Product Name",
                                style: myTextStyle600a.copyWith(color: grey),
                              ),
                              SizedBox(
                                height: .5.h,
                              ),
                              Text(
                                "10009",
                                style: myTextStyle500.copyWith(fontSize: 14),
                              ),
                              SizedBox(height: 3.h,),
                              Text("Downpayment", style: myTextStyle600a.copyWith(color: grey),),
                              SizedBox(height: .5.h,),
                              Text(
                                "1000",
                                style: myTextStyle500.copyWith(fontSize: 14),
                              ),
                            ],
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Product code",
                                style: myTextStyle600a.copyWith(color: grey),
                              ),
                              SizedBox(
                                height: .5.h,
                              ),
                              Text(
                                "1999",
                                style: myTextStyle500.copyWith(fontSize: 14),
                              ),
                              SizedBox(height: 3.h,),
                              Text(
                                "",
                                style: myTextStyle600a.copyWith(color: grey),
                              ),
                              SizedBox(
                                height: .5.h,
                              ),
                              Text(
                                "",
                                style: myTextStyle500.copyWith(fontSize: 14),
                              ),

                            ],
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Product code",
                                style: myTextStyle600a.copyWith(color: grey),
                              ),
                              SizedBox(
                                height: .5.h,
                              ),
                              Text(
                                "4899",
                                style: myTextStyle500.copyWith(fontSize: 14),
                              ),
                              SizedBox(height: 3.h,),
                              Text(
                                "",
                                style: myTextStyle600a.copyWith(color: grey),
                              ),
                              SizedBox(
                                height: .5.h,
                              ),
                              Text(
                                "",
                                style: myTextStyle500.copyWith(fontSize: 14),
                              ),
                            ],
                          ),

                        ],
                      )),
                  ],
                ),
              ),

              Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                elevation: 5,
                shadowColor: Colors.black,
                child: Container(margin: EdgeInsets.all(5),padding: EdgeInsets.all(5),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Total Product Price",
                                style: myTextStyle600a.copyWith(color: grey),
                              ),
                              SizedBox(
                                height: .5.h,
                              ),
                              Text(
                                "12009",
                                style: myTextStyle500.copyWith(fontSize: 14),
                              ),
                              SizedBox(height: 3.h,),
                              Text("Loan Processing fee", style: myTextStyle600a.copyWith(color: grey),),
                              SizedBox(height: .5.h,),
                              Text(
                                "10000",
                                style: myTextStyle500.copyWith(fontSize: 14),
                              ),
                              SizedBox(height: 3.h,),
                              Text("Spouse Insurance", style: myTextStyle600a.copyWith(color: grey),),
                              SizedBox(height: .5.h,),
                              Text(
                                "10000",
                                style: myTextStyle500.copyWith(fontSize: 14),
                              ),
                            ],
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Total Downpayment",
                                style: myTextStyle600a.copyWith(color: grey),
                              ),
                              SizedBox(
                                height: .5.h,
                              ),
                              Text(
                                "1999",
                                style: myTextStyle500.copyWith(fontSize: 14),
                              ),
                              SizedBox(height: 3.h,),
                              Text(
                                "GST",
                                style: myTextStyle600a.copyWith(color: grey),
                              ),
                              SizedBox(
                                height: .5.h,
                              ),
                              Text(
                                "20000",
                                style: myTextStyle500.copyWith(fontSize: 14),
                              ),
                              SizedBox(height: 3.h,),
                              Text("", style: myTextStyle600a.copyWith(color: grey),),
                              SizedBox(height: .5.h,),
                              Text("", style: myTextStyle500.copyWith(fontSize: 14),),
                            ],
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sanction Amount",
                                style: myTextStyle600.copyWith(color: grey),
                              ),
                              SizedBox(
                                height: .5.h,
                              ),
                              Text(
                                "45899",
                                style: myTextStyle500.copyWith(fontSize: 14),
                              ),
                              SizedBox(height: 3.h,),
                              Text(
                                "Member Insurance",
                                style: myTextStyle600.copyWith(color: grey),
                              ),
                              SizedBox(
                                height: .5.h,
                              ),
                              Text(
                                "19000",
                                style: myTextStyle500.copyWith(fontSize: 14),
                              ),
                              SizedBox(height: 3.h,),
                              Text(
                                "",
                                style: myTextStyle600a.copyWith(color: grey),
                              ),
                              SizedBox(
                                height: .5.h,
                              ),
                              Text(
                                "",
                                style: myTextStyle500.copyWith(fontSize: 14),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                height: 6.h,width: 100.w,margin: EdgeInsets.all(10),padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: loanTextColor,borderRadius: BorderRadius.circular(10)),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total Fee to be collected",style: TextStyle(fontWeight: FontWeight.w500),),
                    Text("36000",style: myTextstye,),
                  ],
                ),
              ),

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: TextFieldWidget(
                    isRequired: false, controller: dwnPayment,
                    name: 'Downpayment MR No',
                  )),
                  Expanded(child: TextFieldWidget(
                    isRequired: false, controller: clientIns,
                    name: 'Client Insurance MR No',
                  ))
                ],
              ),

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: TextFieldWidget(
                    isRequired: false, controller: spouseIns,
                    name: 'Spouse Insurance  MR No',
                  )),
                  Expanded(child: Container())
                ],
              ),

              Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                elevation: 5,
                shadowColor: Colors.black,
                child: Column(
                  children: [
                    Container(width: 100.h,height: 5.h,alignment: Alignment.centerLeft,padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          color: grey.shade400,borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))),
                      child: Text("FCO details",style: myTextStyle700.copyWith(fontSize: 15),),),
                    Container(margin: EdgeInsets.all(10),padding: EdgeInsets.all(15),
                        decoration:  BoxDecoration(
                            color: grey.shade100,borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("FCO Name", style: myTextStyle600a.copyWith(color: grey),),
                                SizedBox(height: .5.h,),
                                Text("Vivek Sharma", style: myTextStyle500.copyWith(fontSize: 14),),
                              ],
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("FCO No", style: myTextStyle600a.copyWith(color: grey),),
                                SizedBox(height: .5.h,),
                                Text("+91-9876543201", style: myTextStyle500.copyWith(fontSize: 14),),
                              ],
                            ),
                          ],
                        )),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextBtnWidget(name: "Confirm", onTap: () {

                },),
              )
            ],
          ),
        ),
      ),
    );
  }
}
