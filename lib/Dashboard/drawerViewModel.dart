import 'package:flutter/cupertino.dart';

import '../Modals/ClientDetailModel.dart';
import '../Modals/ExistingDataModel.dart';
import '../Modals/LuckCheckModel.dart';
import '../api_factory/api.dart';
import '../api_factory/api_end_points.dart';
import '../utils/utils.dart';

class DrawerModels extends ChangeNotifier{

  ClientDetailsModel? clientDetailsModel;
  void clientDetailsAPI({
    required BuildContext context,
    required String UserID,
    required String pincode,
    required String Village,

  }) {
    var params = {
      "UserID": UserID,
      "pincode": pincode,
      "Village": Village,
    };
    Api.request(
      method: HttpMethod.post,
      path: ApiEndPoints.clientDetails,
      params: params,
      isCustomResponse: true,
      context: context,
      onResponse: (response) {
        if (response['status'] != false) {
          clientDetailsModel = ClientDetailsModel.fromJson(response);
          print("object $clientDetailsModel");
          showSuccessSnackbar(response['message'], context);
        }else{
          handleApiError(response['message'], context);
        }

      },
    );
  }

  ExsitingDataDetailsModel? exsitingDataDetailsModel;
  void existingDataApis({
    required BuildContext context,
    required String UserID,
    String? UserRole,
    required String MobileNumber,
  }) {
    var params = {
      "UserID": UserID,
      "UserRole": UserRole ?? "HIG",
      "NewMobileNumber": MobileNumber,

    };
    Api.request(
      method: HttpMethod.post,
      path: ApiEndPoints.existingData,
      params: params,
      isCustomResponse: true,
      context: context,
      onResponse: (response) {
        if (response['status'] != false) {
          showSuccessSnackbar(response['message'], context);
          exsitingDataDetailsModel = ExsitingDataDetailsModel.fromJson(response);
          print("object::::$exsitingDataDetailsModel");
        }else{

          handleApiError(response['message'], context);

        }

      },
    );
  }

  LuckCheckModel? luckCheckModel;
  void luckCheckAPI({
    required BuildContext context,
    required String UserID,
     String? UserRole,
    required String Villageone,
    required String VCenter,

  }) {
    var params = {
      "UserID": UserID,
      "UserRole": UserRole,
      "Village": Villageone,
      "Center": VCenter,
    };
    Api.request(
      method: HttpMethod.post,
      path: ApiEndPoints.luckCheck,
      params: params,
      isCustomResponse: true,
      context: context,
      onResponse: (response) {
        if (response['status'] != false) {
          showSuccessSnackbar(response['message'], context);
          luckCheckModel = LuckCheckModel.fromJson(response);
        }else{
          handleApiError(response['message'], context);
        }

      },
    );
  }
}