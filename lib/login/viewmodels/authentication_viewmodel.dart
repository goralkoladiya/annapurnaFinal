import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:annapurna225/Dashboard/DashboardScreen.dart';
import 'package:annapurna225/api_factory/api.dart';
import 'package:annapurna225/api_factory/api_end_points.dart';
import 'package:annapurna225/api_factory/prefs/pref_utils.dart';
import 'package:annapurna225/api_factory/user_model.dart';
import 'package:annapurna225/common_webview.dart';
import 'package:annapurna225/login/login_view.dart';
import 'package:annapurna225/utils/utils.dart';
import 'package:flutter/material.dart';


class AuthenticationViewModel extends ChangeNotifier {

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
      "Flag":"C"
    };
    Api.request(
      method: HttpMethod.post,
      path: ApiEndPoints.login,
      params: params,
      isCustomResponse: true,
      context: context,
      onResponse: (response) {

        if (response['status'] != false) {
          showSuccessSnackbar(response['message'], context);
          PrefUtils.setIsLoggedIn(true);
          PrefUtils.setUserid(userName);
          PrefUtils.setPassword(password);
          PrefUtils.setToken(response['data']['token']);


          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => DashboardPage(),
              ));
          // userDetail(context: context, userName: userName);

        }else{

          handleApiError(response['message'], context);

        }

      },
    );
  }


  void forgotPasswordAPI({
    required BuildContext context,
    required String userid,
    required String MobileNumber,

  }) {
    var params = {
      "UserID": userid,
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
          showSuccessSnackbar(response['Message'], context);

          PrefUtils.setUserid(userid);
          PrefUtils.setMobileNumber(MobileNumber);
          PrefUtils.clearPrefs();
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
    required String userid,
    required String OldPassword,
    required String NewPassword,
  }) {
    var params = {
      "UserID": userid,
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
          showSuccessSnackbar(response['ChangePasswordData'][0]['Message'], context);
          PrefUtils.clearPrefs();
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


  void logout({
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


      },
    );
  }


}
