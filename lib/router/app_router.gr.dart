// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:tasker/pages/address_page.dart' as _i1;
import 'package:tasker/pages/home_page.dart' as _i2;
import 'package:tasker/pages/navigation_bar_page.dart' as _i3;
import 'package:tasker/pages/sign_up_page.dart' as _i4;

/// generated route for
/// [_i1.AddressPage]
class AddressRoute extends _i5.PageRouteInfo<void> {
  const AddressRoute({List<_i5.PageRouteInfo>? children})
    : super(AddressRoute.name, initialChildren: children);

  static const String name = 'AddressRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.AddressPage();
    },
  );
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomePage();
    },
  );
}

/// generated route for
/// [_i3.NavigationBarPage]
class NavigationBarRoute extends _i5.PageRouteInfo<void> {
  const NavigationBarRoute({List<_i5.PageRouteInfo>? children})
    : super(NavigationBarRoute.name, initialChildren: children);

  static const String name = 'NavigationBarRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.NavigationBarPage();
    },
  );
}

/// generated route for
/// [_i4.SignUpPage]
class SignUpRoute extends _i5.PageRouteInfo<void> {
  const SignUpRoute({List<_i5.PageRouteInfo>? children})
    : super(SignUpRoute.name, initialChildren: children);

  static const String name = 'SignUpRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.SignUpPage();
    },
  );
}
