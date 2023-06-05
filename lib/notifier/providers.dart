import 'package:annapurna225/Dashboard/dashboard_viewmodel.dart';
import 'package:annapurna225/api_factory/base_view_model.dart';
import 'package:annapurna225/login/viewmodels/authentication_viewmodel.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authenticationProvider = ChangeNotifierProvider(
      (_) => AuthenticationViewModel(),
);

final baseViewModel = ChangeNotifierProvider(
      (_) => BaseViewModel(),
);
final dashboardProvider = ChangeNotifierProvider(
      (_) => DashboardViewModel(),
);