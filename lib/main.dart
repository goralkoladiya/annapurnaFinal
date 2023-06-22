import 'package:annapurna225/Dashboard/DashboardScreen.dart';
import 'package:annapurna225/Screens/LAF%20Status/LAF%20Search%20Client.dart';
import 'package:annapurna225/Screens/LUC%20Check/LoanProduct.dart';
import 'package:annapurna225/Screens/OCR%20Screen/Aadhaar%20Card/Single%20Side/Add%20Aadhar%20Card.dart';
import 'package:annapurna225/splash/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sizer/sizer.dart';
import 'All Product Screen/screen1.dart';
import 'HouseHoldCashFlowDetails/HHmonthly.dart';
import 'Screens/OCR Screen/Add Client/Add Client.dart';
import 'Screens/OCR Screen/VoterID Back/BackSiteVoterID.dart';
import 'Screens/OCR Screen/VoterID Front/Add VoterID.dart';
import 'Screens/SplashScreen/splashData.dart';
import 've.client details/clientList.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQueryData.fromWindow(WidgetsBinding.instance.window),
      child: ScreenUtilInit(
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
            home: Sizer(
              builder: (context, orientation, deviceType) {
                return DashboardPage();
              },
            ),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MediaQuery(
//       data: MediaQueryData.fromWindow(WidgetsBinding.instance.window),
//       child: ScreenUtilInit(
//         builder: (BuildContext context, Widget? child) {
//           return MaterialApp(
//             title: 'Annapurna Finance',
//             debugShowCheckedModeBanner: false,
//             theme: ThemeData(
//               primarySwatch: Colors.blue,
//             ),
//             home: const SplashView(),
//           );
//         },
//       ),
//     );
//   }
// }

//
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(MaterialApp(
//     home: Sizer(
//       builder: (context, orientation, deviceType) {
//         return  AddClient();
//       },
//     ),
//     debugShowCheckedModeBanner: false,
//   ));
// }
