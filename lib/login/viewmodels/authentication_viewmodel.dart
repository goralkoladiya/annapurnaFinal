import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:annapurna225/AppImages.dart';
import 'package:annapurna225/Dashboard/DashboardScreen.dart';
import 'package:annapurna225/Modals/User.dart';
import 'package:annapurna225/Screens/SplashScreen.dart';
import 'package:annapurna225/api_factory/api.dart';
import 'package:annapurna225/api_factory/api_end_points.dart';
import 'package:annapurna225/api_factory/prefs/pref_utils.dart';
import 'package:annapurna225/api_factory/user_model.dart';
import 'package:annapurna225/common_webview.dart';
import 'package:annapurna225/components/dialog.dart';
import 'package:annapurna225/help/helpPage.dart';
import 'package:annapurna225/login/login_view.dart';
import 'package:annapurna225/utils/utils.dart';
import 'package:flutter/material.dart';

import '../../AppImages.dart';
import '../../Modals/NotificationModel.dart';
import '../../components/dialog.dart';


class AuthenticationViewModel extends ChangeNotifier {
  User? user;
  bool loginresult=true;
  void loginAPI({
    required BuildContext context,
    required String userName,
    required String password,
  }) {
    var params = {
      "UserID": userName,
      "Password": password,
      "MACID":"451236786",
      "Version":"4.0",
      "Flag":"B"
    };
    Api.request(
      method: HttpMethod.post,
      path: ApiEndPoints.login,
      params: params,
      isCustomResponse: true,
      context: context,
      onResponse: (response) async {

        print("response=$response");
        if (response['status'] != false) {
          showSuccessSnackbar(response['message'], context);
          PrefUtils.setIsLoggedIn(true);
          PrefUtils.setUserid(userName);
          PrefUtils.setPassword(password);
          PrefUtils.setUserRole(response['UserRole']);
          // user=User.fromJson(response);
          String status=await PrefUtils.getUserRole() ?? 'FCO';
          print("status=$status");
          // notifyListeners();
          PrefUtils.setToken(response['data']['token']);
          loginresult=true;
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => DashboardPage(),
              ));
          // userDetail(context: context, userName: userName);

        }else{
          loginresult=false;
          handleApiError(response['message'], context);
        }
        notifyListeners();
      },
    );
  }


  void forgotPasswordAPI({
    required BuildContext context,
    required String userName,
    required String MobileNumber,

  }) {
    var params = {
      "UserID": userName,
      "MoblieNumber": MobileNumber,

    };
    Api.request(
      method: HttpMethod.post,
      path: ApiEndPoints.ForgotPassword,
      params: params,
      isCustomResponse: true,
      context: context,
      onResponse: (response) {

        print(response);
        if (response['status'] != false) {
          showSuccessSnackbar(response['message'], context);

          PrefUtils.setUserid(userName);
          PrefUtils.setMobileNumber(MobileNumber);
          PrefUtils.clearPrefs();
          Navigator.pop(context);
          // Navigator.pushReplacement(context,
          //     MaterialPageRoute(
          //       builder: (context) {
          //         return LoginView();
          //       },
          //     ));
        }else{

          handleApiError(response['message'], context);

        }

      },
    );
  }

  void OTPVerificationAPI({
    required BuildContext context,
    required String userName,
    required String Phoneno,
    required String OTPNO,
  }) {
    var params = {
      "UserID": userName,
      "MoblieNumber": Phoneno,
      "OTPNO" : OTPNO,

    };
    Api.request(
      method: HttpMethod.post,
      path: ApiEndPoints.OTP,
      params: params,
      isCustomResponse: true,
      context: context,
      onResponse: (response) {

        print(response);
        if (response['status'] != false) {
          showSuccessSnackbar(response['message'], context);

          PrefUtils.setUserid(userName);
          PrefUtils.setMobileNumber(Phoneno);
          PrefUtils.setOTP(OTPNO);

          PrefUtils.clearPrefs();
          // Navigator.pop(context);
          Navigator.pushReplacement(context,
              MaterialPageRoute(
                builder: (context) {
                  return LoginView();
                },
              ));
        }else{

          handleApiError(response['message'], context);

        }

      },
    );
  }

  void changePasswordAPI({
    required BuildContext context,
    required String userName,
    required String OldPassword,
    required String NewPassword,
  }) {
    var params = {
      "UserID": userName,
      "OldPassword": OldPassword,
      "NewPassword":NewPassword,
    };
    Api.request(
      method: HttpMethod.post,
      path: ApiEndPoints.ChangePassword,
      params: params,
      isCustomResponse: true,
      context: context,
      onResponse: (response) {

        print(response);
        if (response['status'] != false) {
          double theight=MediaQuery.of(context).size.height;
          double twidth=MediaQuery.of(context).size.width;
          double statusbar=MediaQuery.of(context).padding.top;
          double navbar=MediaQuery.of(context).padding.bottom;
          double bheight=theight-statusbar-navbar;
          // showSuccessSnackbar(response['ChangePasswordData'][0]['Message'], context);
          myDialog3(context, AppImages.done, "Password Changed Successfully","Okay", bheight*0.4, twidth*0.4,press: (){
            PrefUtils.clearPrefs();
            Navigator.pushReplacement(context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginView();
                  },
                ));
          });

        }else{

          handleApiError(response['message'], context);

        }

      },
    );
  }

  void userDetail({
    required BuildContext context,
    required String userName
  }) {
    var params = {
      "UserID": userName,
    };
    Api.request(
      method: HttpMethod.post,
      path: ApiEndPoints.userDetail,
      params: params,
      isCustomResponse: true,
      context: context,
      onResponse: (response) {

        if (response['status'] != "False") {
          var userModel = UserModel.fromJson(response);
          PrefUtils.setUser(jsonEncode(userModel));

          String userID = response['USERID'];
          String url = '';

          if (response['UserRole'] == 'STAFF') {
            url = 'https://abhayahospital.in/landing/staff/$userID';
          } else if (response['UserRole'] == 'BM') {
            url = 'https://abhayahospital.in/landing/bm/$userID';
          } else if (response['UserRole'] == 'ZM') {
            url = 'https://abhayahospital.in/landing/zm/$userID';
          } else {
            url = 'https://abhayahospital.in/landing/zm/$userID';
          }

          log('------------------------------$url       ${response['UserRole']}');
          PrefUtils.setIsLoggedIn(true);
          PrefUtils.setUrl(url);

          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => CommonWebView(url: url),
              ));

        } else {
          handleApiError(response['message'], context);
        }

        notifyListeners();

      },
    );
  }

  void FAQAPI({
    required BuildContext context,
    required String userName,
    required String UserRole,
  }) {
    var params = {
      "UserID": userName,
      "UserRole": UserRole,
    };
    Api.request(
      method: HttpMethod.post,
      path: ApiEndPoints.FAQ,
      params: params,
      isCustomResponse: true,
      context: context,
      onResponse: (response) {

        print(response);
        if (response['status'] != false) {

          print(response);
          showSuccessSnackbar(response['message'], context);

          List list = response;
          // Navigator.pushReplacement(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => helpPage(),
          //     ));

        }else{

          handleApiError(response['message'], context);

        }

      },
    );
  }

  void contactAPI({
    required BuildContext context,
    required String userName,
    required String UserRole,

  }) {
    var params = {
      "UserID": userName,
      "UserRole": UserRole,
    };
    Api.request(
      method: HttpMethod.post,
      path: ApiEndPoints.contact,
      params: params,
      isCustomResponse: true,
      context: context,
      onResponse: (response) {

        print(response);
        if (response['status'] != false) {

          print(response);
          showSuccessSnackbar(response['message'], context);

          // Navigator.pushReplacement(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => helpPage(),
          //     ));

        }else{

          handleApiError(response['message'], context);

        }

      },
    );
  }

  NotificationModel? notificationModel;
  void notificationAPI({
    required BuildContext context,
    required String userName,
    required String UserRole,

  }) {
    var params = {
      "UserID": userName,
      "UserRole": UserRole,
    };
    Api.request(
      method: HttpMethod.post,
      path: ApiEndPoints.notification,
      params: params,
      isCustomResponse: true,
      context: context,
      onResponse: (response) {

        print(response);
        if (response['status'] != false) {
          notificationModel = NotificationModel.fromJson(response);
          notifyListeners();
          showSuccessSnackbar(response['message'], context);

        }else{

          handleApiError(response['message'], context);

        }

      },
    );
  }


  void logoutAPI({
    required BuildContext context,
    required String userName
  }) {
    var params = {
      "UserId": userName,
    };
    Api.request(
      method: HttpMethod.post,
      path: ApiEndPoints.logout,
      params: params,
      isCustomResponse: true,
      context: context,
      onResponse: (response) {
        print(response);

        if (response['status'] != false) {
          PrefUtils.setisLogout(true);
          PrefUtils.setUserid(userName);
          PrefUtils.clearPrefs();

          showSuccessSnackbar(response['message'], context);

          Navigator.pushReplacement(context,
              MaterialPageRoute(
                builder: (context) {
                  return LoginView();
                },
              ));
        }else{

          handleApiError(response['message'], context);

        }


      },
    );
  }


}
