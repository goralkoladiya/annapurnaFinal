import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:annapurna225/AppImages.dart';
import 'package:annapurna225/Dashboard/DashboardScreen.dart';
import 'package:annapurna225/Modals/InsightModal.dart';
import 'package:annapurna225/Modals/StatisticsDataDetails.dart';
import 'package:annapurna225/api_factory/api.dart';
import 'package:annapurna225/api_factory/api_end_points.dart';
import 'package:annapurna225/api_factory/prefs/pref_utils.dart';
import 'package:annapurna225/api_factory/user_model.dart';
import 'package:annapurna225/common_webview.dart';
import 'package:annapurna225/components/dialog.dart';
import 'package:annapurna225/login/login_view.dart';
import 'package:annapurna225/utils/utils.dart';
import 'package:flutter/material.dart';


class DashboardViewModel extends ChangeNotifier {

  DashBoardDetails? dashBoardDetails;

  void InsightAPI({
    required BuildContext context,
     String? UserID,
     String? type,
  }) {
    var params = {
      "UserID": UserID,
      "BranchId": "HIg",
      "BrachName":"142",
      "Type":type,
    };
    Api.request(
      method: HttpMethod.post,
      path: ApiEndPoints.dashboard,
      params: params,
      isCustomResponse: true,
      context: context,
      onResponse: (response) {
        print(response);
        if (response['status'] != false) {
          dashBoardDetails=DashBoardDetails.fromJson(response['DashBoardDetails'][0]);
          print(dashBoardDetails);
          notifyListeners();
        }else{

          handleApiError(response['message'], context);

        }

      },
    );
  }

  StatisticsDataDetailsModal? statisticsDataDetailsModal;
  void StatisticsDashBoard({
    required BuildContext context,
    String? UserID,
  }) {
    var params = {
      "UserID": UserID,
    };
    Api.request(
      method: HttpMethod.post,
      path: ApiEndPoints.statisticsDashBoard,
      params: params,
      isCustomResponse: true,
      context: context,
      onResponse: (response) {

        if (response['status'] != false) {
          statisticsDataDetailsModal=StatisticsDataDetailsModal.fromJson(response);
          print("response ::::::: $statisticsDataDetailsModal");
          notifyListeners();
        }else{

          handleApiError(response['message'], context);

        }

      },
    );
  }



}
