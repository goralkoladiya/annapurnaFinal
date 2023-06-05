import 'package:annapurna225/HouseHoldCashFlowDetails/HHmonthly.dart';
import 'package:annapurna225/Screens/LAF%20Status/LAF%20Search%20Client.dart';
import 'package:annapurna225/Screens/LUC%20Check/Luccheck.dart';
import 'package:annapurna225/Screens/New%20Application/Add%20New%20Client/Add%20New%20Client.dart';
import 'package:annapurna225/Screens/New%20Application/Search%20%20Client.dart';
import 'package:annapurna225/Screens/OCR%20Screen/Add%20Client/Add%20Client.dart';
import 'package:annapurna225/Screens/Village%20Capture/Get%20Location.dart';
import 'package:annapurna225/api_factory/prefs/pref_utils.dart';
import 'package:annapurna225/change_password/changePassword.dart';
import 'package:annapurna225/components/TextBtnWidget.dart';
import 'package:annapurna225/help/helpPage.dart';
import 'package:annapurna225/notifier/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../components/constants.dart';
import '../../components/dropdown_widget.dart';
import '../Screens/Fees And Charges/Fees.dart';


class DashboardPage extends ConsumerStatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  ConsumerState<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends ConsumerState<DashboardPage>
    with TickerProviderStateMixin {
  bool isExpanded = false;
  TabController? tabController;

  late List<DisbursedApplicants> disburData;

  late List<DisbursedApplicants> data;
  late TooltipBehavior _tooltip;

  List AODrawerTitle = [
    "Review",
    "LAF Status",
    "Appraisal",
    "Notification",
    "Help",
    "Change Password"
  ];
  List AODrawerImage = [
    "assets/Drawer/newApplication.png",
    "assets/Drawer/lafStatus.png",
    "assets/appraisal.png",
    "assets/Drawer/notification.png",
    "assets/Drawer/help.png",
    "assets/Drawer/chnagepass.png",
  ];
  List FCODrawerTitle = [
    "New Application",
    "LAF Status",
    "LUC Check",
    "Village Addition",
    "CB Deviation Approval",
    "Fees and Charges",
    "Notification",
    "Help",
    "Change Password"
  ];
  List FCODrawerImage = [
    "assets/Drawer/newApplication.png",
    "assets/Drawer/lafStatus.png",
    "assets/Drawer/lucCheck.png",
    "assets/Drawer/village.png",
    "assets/Drawer/cbDivition.png",
    "assets/Drawer/salary 1.png",
    "assets/Drawer/notification.png",
    "assets/Drawer/help.png",
    "assets/Drawer/chnagepass.png",
  ];
  List BMDrawerTitle = [
    "Review",
    "GRT",
    "PD",
    "LAF Status",
    "LUC Approval",
    "CB Deviation Approval",
    "Notification",
    "Help",
    "Change Password"
  ];
  List BMDrawerImage = [
    "assets/Drawer/profiles 1.png",
    "assets/Drawer/lafStatus.png",
    "assets/pd.png",
    "assets/lafstatus.png",
    "assets/Drawer/lucCheck.png",
    "assets/Drawer/cbDivition.png",
    "assets/Drawer/notification.png",
    "assets/Drawer/help.png",
    "assets/Drawer/chnagepass.png",
  ];
  List DrawerTitle=[];
  List DrawerImage=[];
  String status="FCO";
  getInsight()
  async {
    ref.watch(dashboardProvider).InsightAPI(
        context: context,
        UserID:await PrefUtils.getUserId()??"",
    type:"MTD",
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      getInsight();
    });

    disburData = [
      DisbursedApplicants('JAN', 12, 10),
      DisbursedApplicants('FEB', 15, 20),
      DisbursedApplicants('MAR', 44, 30),
      DisbursedApplicants('APR', 6.4, 5),
      DisbursedApplicants('MAY', 20, 25),
      DisbursedApplicants('JUN', 14, 10),
      DisbursedApplicants('JUL', 32, 30),
      DisbursedApplicants('AUG', 36, 20),
      DisbursedApplicants('SEP', 25, 10),
      DisbursedApplicants('OCT', 12, 8),
      DisbursedApplicants('NOV', 42, 10),
      DisbursedApplicants('DEC', 27, 10),
    ];

    _tooltip = TooltipBehavior(enable: true);
    if(status=="FCO")
    {
      DrawerTitle=FCODrawerTitle;
      DrawerImage=FCODrawerImage;
    }
    else if(status=="BM")
    {
      DrawerTitle=BMDrawerTitle;
      DrawerImage=BMDrawerImage;
    }
    else
    {
      DrawerTitle=AODrawerTitle;
      DrawerImage=AODrawerImage;
    }
  }
  bool get=true;
  int pos=0;
  List<Widget> list=[SearchClient(),LafSearchClient(),Luccheck(),GetLocation(),Hhmonthly(),FeesCharges(),AddClient(),helpPage(),changePassword()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
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
            child: IconButton(
              color: black,
              onPressed: () {},
              icon: ImageIcon(
                AssetImage("assets/dasboardimg/Group 149.png"),
                color: Colors.black,
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
            child: PopupMenuButton(
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                size: 15,
                color: Colors.black,
              ),
              onSelected: (value) {
                switch (value) {
                  case 1:
                    Navigator.push(context, MaterialPageRoute(builder: (context) => changePassword(),));
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
        ],
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child:
                      Image(image: AssetImage("assets/Drawer/profile.png")),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Column(
                      children: [
                        Text(
                          "Vivek Sharma",
                          style: myTextStyle700.copyWith(fontSize: 18),
                        ),
                        const Text("Filled Credit Officer"),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
                Expanded(
                  child: ListView.separated(
                    itemCount: DrawerTitle.length,
                    itemBuilder: (context, index) {
                      return ListTile(onTap: () {
                        setState(() {
                          get=false;
                          pos=index;
                        });
                        Navigator.pop(context);
                      },
                        title: Text(
                          "${DrawerTitle[index]}",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.black,
                          size: 20,
                        ),
                        leading: Image.asset(DrawerImage[index]),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return Divider();
                    },
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                TextBtnWidget(
                  name: 'Logout',
                  btnColor: grey.shade100,
                  textColor: grey,
                  borderColor: Colors.grey,
                  onTap: () async {

                    String userid=await PrefUtils.getUserId()??'';
                    ref.watch(authenticationProvider).logout(
                      context: context,
                      userName: userid,
                    );
                    }

                ),
                SizedBox(
                  height: 1.h,
                ),
                Text("Version 1.0.0")
              ],
            ),
          ),
        ),
      ),
      body: get ? ScrollConfiguration(
        behavior: MaterialScrollBehavior().copyWith(overscroll: false),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text(
                      "Branch Name: Branch one",
                      style: boldText,
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 2.5.h,
                        width: 9.h,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(250, 157, 18, 1),
                            borderRadius: BorderRadius.circular(2)),
                        alignment: Alignment.center,
                        child: Text(
                          "Medium Risk",
                          style: TextStyle(
                            color: white,
                            fontSize: 7.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        )),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Transaction Date: ",
                              style: TextStyle(
                                fontSize: 6.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              " 09:09:2022",
                              style: TextStyle(
                                fontSize: 6.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Login Date and Time",
                              style: TextStyle(
                                fontSize: 6.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "10:09:2022, 3:40PM",
                              style: TextStyle(
                                fontSize: 6.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Row(
                children: DrawerTitle.asMap().entries.map((e) => Container(
                  height: 15.h,
                  width: 100.w / 3,
                  decoration: BoxDecoration(
                      color: gray,
                      border:
                      Border.all(width: .5, color: Colors.grey.shade300)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("${DrawerImage[e.key]}"),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text("${e.value}", style: text600)
                    ],
                  ),
                )).toList().take(3).toList(),
              ),
              DrawerTitle.length>6? InkWell(
                onTap: () {
                  setState(() {
                    isExpanded=!isExpanded;
                  });
                },
                child: Padding(padding: EdgeInsets.all(defaultPadding),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Image.asset("assets/dots.png",height: 1.h,width: 5.w,),
                  ),),
              ):SizedBox(),
              (isExpanded)?
              Row(
                children: DrawerTitle.asMap().entries.map((e) => Container(
                  height: 15.h,
                  width: 100.w / 3,
                  decoration: BoxDecoration(
                      color: gray,
                      border:
                      Border.all(width: .5, color: Colors.grey.shade300)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("${DrawerImage[e.key]}"),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text("${e.value}", style: text600,textAlign: TextAlign.center,)
                    ],
                  ),
                )).toList().skip(3).take(3).toList(),
              )
                  : Container(),
              Container(
                margin: EdgeInsets.fromLTRB(10, 20, 0, 10),
                child: Row(
                  children: [
                    Text(
                      "Insights",
                      style: boldText,
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Image.asset(
                      "assets/dasboardimg/Vector (1).png",
                      height: 3.w,
                    ),
                    Spacer(),
                    Container(
                        width: 45.w,
                        child: TabBar(
                          onTap: (value) async {
                            String userid=await PrefUtils.getUserId() ?? "";
                            if(value==0)
                              {

                                ref.watch(dashboardProvider).InsightAPI(
                                  context: context,
                                  UserID:userid,
                                  type:"MTD",
                                );
                              }
                            if(value==1)
                              {
                                ref.watch(dashboardProvider).InsightAPI(
                                  context: context,
                                  UserID:userid,
                                  type:"QTD",
                                );
                              }
                            if(value==2)
                              {
                                ref.watch(dashboardProvider).InsightAPI(
                                  context: context,
                                  UserID:userid,
                                  type:"YTD",
                                );
                              }
                          },
                            indicatorSize: TabBarIndicatorSize.label,
                            indicatorColor: indicatorColor,
                            controller: tabController,
                            labelStyle: boldText,
                            labelColor: kPrimaryColor,
                            unselectedLabelColor: Colors.black,
                            tabs: [
                              Tab(
                                text: "MTD",
                              ),
                              Tab(
                               text: "QTD",

                              ),
                              Tab(
                               text: "YTD",
                              )
                            ]))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 28.h,
                width: 100.h,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: bordercolor),
                              color: gray,
                              borderRadius: BorderRadius.circular(7)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${value[index]["title"]}",
                                style: boldTextsize6,
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Text(
                                "${ref.watch(dashboardProvider).dashBoardDetails?.amount1}",
                                style: boldTextsize8,
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Amount:",
                                    style: TextStyle(fontSize: 7.sp),
                                  ),
                                  Text(
                                    " Rs. ${value[index]["amount"]}",
                                    style: TextStyle(
                                        fontSize: 7.sp,
                                        color: indicatorColor,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: bordercolor),
                              color: gray,
                              borderRadius: BorderRadius.circular(7)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${value[index]["title"]}",
                                style: boldTextsize6,
                              ),

                              SizedBox(
                                height: 1.h,
                              ),
                              Text(
                                "${ref.watch(dashboardProvider).dashBoardDetails?.amount2}",
                                style: boldTextsize8,
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Amount:",
                                    style: TextStyle(fontSize: 7.sp),
                                  ),
                                  Text(
                                    " Rs. ${value[index]["amount"]}",
                                    style: TextStyle(
                                        fontSize: 7.sp,
                                        color: indicatorColor,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: bordercolor),
                              color: gray,
                              borderRadius: BorderRadius.circular(7)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${value[index]["title"]}",
                                style: boldTextsize6,
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Text(
                                "${value[index]["total"]}",
                                style: boldTextsize8,
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Amount:",
                                    style: TextStyle(fontSize: 7.sp),
                                  ),
                                  Text(
                                    " Rs. ${value[index]["amount"]}",
                                    style: TextStyle(
                                        fontSize: 7.sp,
                                        color: indicatorColor,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: bordercolor),
                              color: gray,
                              borderRadius: BorderRadius.circular(7)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${value[index]["title"]}",
                                style: boldTextsize6,
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Text(
                                "${value[index]["total"]}",
                                style: boldTextsize8,
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Amount:",
                                    style: TextStyle(fontSize: 7.sp),
                                  ),
                                  Text(
                                    " Rs. ${value[index]["amount"]}",
                                    style: TextStyle(
                                        fontSize: 7.sp,
                                        color: indicatorColor,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: bordercolor),
                              color: gray,
                              borderRadius: BorderRadius.circular(7)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${value[index]["title"]}",
                                style: boldTextsize6,
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Text(
                                "${value[index]["total"]}",
                                style: boldTextsize8,
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Amount:",
                                    style: TextStyle(fontSize: 7.sp),
                                  ),
                                  Text(
                                    " Rs. ${value[index]["amount"]}",
                                    style: TextStyle(
                                        fontSize: 7.sp,
                                        color: indicatorColor,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: bordercolor),
                              color: gray,
                              borderRadius: BorderRadius.circular(7)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${value[index]["title"]}",
                                style: boldTextsize6,
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Text(
                                "${value[index]["total"]}",
                                style: boldTextsize8,
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Amount:",
                                    style: TextStyle(fontSize: 7.sp),
                                  ),
                                  Text(
                                    " Rs. ${value[index]["amount"]}",
                                    style: TextStyle(
                                        fontSize: 7.sp,
                                        color: indicatorColor,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 1.5.h,right: 1.5.h,bottom: 1.5.h),
                padding: EdgeInsets.all(1.h),
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(.5),
                          offset: Offset(0, 1),
                          spreadRadius: 1,
                          blurRadius: 1)
                    ]),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Statistics",
                          style: boldTextsize8,
                        ),
                        IconButton(
                            color: indicatorColor,
                            iconSize: 20,
                            onPressed: () {},
                            icon: Icon(Icons.calendar_today_outlined))
                      ],
                    ),
                    Container(
                      height: 25.h,
                      child: SfCartesianChart(
                          primaryXAxis: CategoryAxis(),
                          primaryYAxis: NumericAxis(
                              minimum: 0, maximum: 50, interval: 10),
                          tooltipBehavior: _tooltip,
                          series: <ChartSeries<DisbursedApplicants, String>>[
                            ColumnSeries<DisbursedApplicants, String>(
                                dataSource: disburData,
                                xValueMapper: (DisbursedApplicants data, _) =>
                                data.x,
                                yValueMapper: (DisbursedApplicants data, _) =>
                                data.y,
                                name: 'Disbursed Applicants',
                                color: chartColorGreen),
                            ColumnSeries<DisbursedApplicants, String>(
                                dataSource: disburData,
                                xValueMapper: (DisbursedApplicants data, _) =>
                                data.x,
                                yValueMapper: (DisbursedApplicants data, _) =>
                                data.y1,
                                name: 'Rejected Applications',
                                color: chartColorOrange),
                          ]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 2.h,
                          width: 2.h,
                          color: chartColorGreen,
                        ),
                        Text(
                          "Disbursed Applicants",
                          style: boldTextsize6,
                        ),
                        Container(
                          height: 2.h,
                          width: 2.h,
                          color: chartColorOrange,
                        ),
                        Text(
                          "Rejected Applications",
                          style: boldTextsize6,
                        ),
                        Container(
                          height: 2.h,
                          width: 2.h,
                          color: indicatorColor,
                        ),
                        Text(
                          "Total Applications",
                          style: boldTextsize6,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ):list[pos],
    );
  }
}

class DisbursedApplicants {
  DisbursedApplicants(this.x, this.y, this.y1);

  String x;
  double y;
  double y1;
}
