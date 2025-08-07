import 'package:auto_route/auto_route.dart';
import 'package:tasker/router/app_router.gr.dart';
import '../pages/home_page.dart' as home;

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      initial: true,
      path: '/navigation_bar',
      page: NavigationBarRoute.page,
      children: [
        // RedirectRoute(path: '', redirectTo: 'users'),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: AddressRoute.page),
        AutoRoute(page: SignUpRoute.page),
      ],
    ),
  ];
}
