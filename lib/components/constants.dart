import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

const kPrimaryColor = Color.fromRGBO(68, 36, 119, 1);
const kPrimarys = Color.fromRGBO(229, 212, 250, 1.0);
const kPrimaryLightColor = Color(0xFF336699);
const white = Colors.white;
const black = Colors.black;
const grey = Colors.grey;
const red = Colors.red;
const green = Color.fromRGBO(89, 170, 36, 1);
const lightGreen = Color.fromRGBO(79, 184, 23, 1);
const gray = Color.fromRGBO(190, 206, 229, 210);
const indicatorColor = Color.fromRGBO(68,36,119,1);
const chartColorGreen = Color.fromRGBO(79, 184, 23, 1);
const chartColorOrange = Color.fromRGBO(233, 114, 26, 1);
const bordercolor = Color.fromRGBO(68, 36, 119, .39);
const luccolor = Color.fromRGBO(230, 230, 230, 1);
const luccolorDark = Color.fromRGBO(80, 93, 124, .16);
const lucTextColor = Color.fromRGBO(128, 128, 128, 1);
const loanTextColor = Color.fromRGBO(219, 222, 227, 1);
const fillTextColor = Color.fromRGBO(242, 242, 242, 1);
const double defaultPadding = 16.0;

const value = [
  {"title": "No of Applications", "total": "2345", "amount": "1,00,000"},
  {"title": "Applications Sanctioned", "total": "2345", "amount": "2,00,000"},
  {"title": "In process Clients", "total": "300", "amount": "50,000"},
  {"title": "Disbursed Applicants", "total": "235", "amount": "1,00,000"},
  {"title": "Rejected Applications", "total": "25", "amount": "3,50,000"},
  {"title": "Active Clients", "total": "250", "amount": "5,60,000"}
];

 const done = "assets/Done.png";
 const imagDialog = "assets/dailog.png";
 const imagDialog2 = "assets/dailog2.png";
TextStyle myTextStyle500 =  GoogleFonts.notoSans(
  fontSize: 15,
  fontWeight: FontWeight.w500,
);

TextStyle myTextStylegrey =  GoogleFonts.notoSans(
    fontSize: 10,
    color: Colors.grey
);
TextStyle myTextStyllibility =  GoogleFonts.notoSans(
  fontSize: 10,
  color:Color.fromRGBO(128, 128, 128, 1),


);
TextStyle myTextStyleliability2=  GoogleFonts.notoSans(
    fontSize: 12,
    color: Colors.black
);
TextStyle myTextStyle100 =  GoogleFonts.notoSans(
    fontSize: 10,
    color: Colors.grey
);
TextStyle myTextStylebold =  GoogleFonts.notoSans(
  fontSize: 15,
  fontWeight: FontWeight.bold,
);
TextStyle myTextStyle600 =  GoogleFonts.notoSans(
  fontSize: 10,
    color: Colors.black
);

TextStyle myTextStyleblue =  GoogleFonts.notoSans(
    fontSize: 10,
    color: kPrimaryColor,decoration: TextDecoration.underline

);

TextStyle myTextstye = GoogleFonts.notoSans(
  fontSize: 18,
  fontWeight: FontWeight.w600,
);

TextStyle myTextStyle600a =  GoogleFonts.notoSans(
  fontSize: 12,
  color: Colors.black
);

TextStyle myTextStyle700 =  GoogleFonts.notoSans(
  fontSize: 20,
  fontWeight: FontWeight.w700,
);

TextStyle myTextstye1 = GoogleFonts.inter(
  fontSize: 16,
  color: Colors.black,
  fontWeight: FontWeight.w400,
);
TextStyle boldText = GoogleFonts.notoSans(
    fontSize: 7.sp, fontWeight: FontWeight.bold, color: black);

TextStyle boldTextsize6 = GoogleFonts.notoSans(
    fontSize: 6.sp, fontWeight: FontWeight.bold, color: black);

TextStyle boldTextsize8= GoogleFonts.notoSans(
    fontSize: 11.sp, fontWeight: FontWeight.bold, color:indicatorColor);

TextStyle text600 = GoogleFonts.notoSans(
  fontSize: 9.sp,
  fontWeight: FontWeight.w600,
);


