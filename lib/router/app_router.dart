import 'package:auto_route/auto_route.dart';
import 'package:tasker/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: '/',
      page: NavigationBarRoute.page,
      children: [
        RedirectRoute(path: '', redirectTo: 'home'),
        AutoRoute(page: HomeRoute.page, path: 'home'),
        AutoRoute(page: AddressRoute.page, path: 'address'),
        AutoRoute(page: SignUpRoute.page, path: 'sign_up'),
      ],
    ),
    AutoRoute(page: LogInRoute.page, path: '/login'),
    AutoRoute(page: ProfileRoute.page, path: '/profile')
  ];
}
