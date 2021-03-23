import 'package:auto_route/auto_route_annotations.dart';
import 'package:labala/features/auth/views/v.login.dart';
import 'package:labala/features/auth/views/v.register.dart';
import 'package:labala/features/feed/views/v.dashboard.dart';
import 'package:labala/features/notification/views/v.notification.dart';
import 'package:labala/features/product/views/v.product_add.dart';
import 'package:labala/features/profile/views/v.profile.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: VLogin),
  MaterialRoute(page: VRegister),
  MaterialRoute(page: VDashboard),
  MaterialRoute(page: VProductAdd),
  MaterialRoute(page: VNotification),
  MaterialRoute(page: VProfile)
])
class $RViews {}
