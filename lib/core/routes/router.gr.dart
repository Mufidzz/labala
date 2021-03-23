// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../features/auth/views/v.login.dart';
import '../../features/auth/views/v.register.dart';
import '../../features/feed/views/v.dashboard.dart';
import '../../features/notification/views/v.notification.dart';
import '../../features/product/views/v.product_add.dart';
import '../../features/profile/views/v.profile.dart';

class Routes {
  static const String vLogin = '/v-login';
  static const String vRegister = '/v-register';
  static const String vDashboard = '/v-dashboard';
  static const String vProductAdd = '/v-product-add';
  static const String vNotification = '/v-notification';
  static const String vProfile = '/v-profile';
  static const all = <String>{
    vLogin,
    vRegister,
    vDashboard,
    vProductAdd,
    vNotification,
    vProfile,
  };
}

class RViews extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.vLogin, page: VLogin),
    RouteDef(Routes.vRegister, page: VRegister),
    RouteDef(Routes.vDashboard, page: VDashboard),
    RouteDef(Routes.vProductAdd, page: VProductAdd),
    RouteDef(Routes.vNotification, page: VNotification),
    RouteDef(Routes.vProfile, page: VProfile),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    VLogin: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => VLogin(),
        settings: data,
      );
    },
    VRegister: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => VRegister(),
        settings: data,
      );
    },
    VDashboard: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => VDashboard(),
        settings: data,
      );
    },
    VProductAdd: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => VProductAdd(),
        settings: data,
      );
    },
    VNotification: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => VNotification(),
        settings: data,
      );
    },
    VProfile: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => VProfile(),
        settings: data,
      );
    },
  };
}
