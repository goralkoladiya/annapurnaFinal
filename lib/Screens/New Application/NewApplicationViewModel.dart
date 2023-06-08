import 'package:flutter/cupertino.dart';

import '../../api_factory/api.dart';
import '../../api_factory/api_end_points.dart';
import '../../api_factory/prefs/pref_utils.dart';
import '../../utils/utils.dart';

class NewApplicationViewModel extends ChangeNotifier{

  //verify mobile.dart
  void verifyMobileApi({
    required BuildContext context,
    required String UserID,
    required String ExisNumber,
    required String NewMobileNumber,
    required String ConfirmNumber,

  }) {
    var params = {
      "UserID": UserID,
      "ExistingMobileNumber": ExisNumber,
      "NewMobileNumber": NewMobileNumber,
      "ConfirmNewMobileNumber": ConfirmNumber,

    };
    Api.request(
      method: HttpMethod.post,
      path: ApiEndPoints.verifyMobileNumber,
      params: params,
      isCustomResponse: true,
      context: context,
      onResponse: (response) {

        print(response);
        if (response['status'] != false) {

          PrefUtils.setMobileNumber(NewMobileNumber);
          List list = response['VerifyMobileNumberDetails'];
          showSuccessSnackbar(list[0]['Message'], context);
        }else{

          handleApiError(response['message'], context);

        }

      },
    );
  }

}