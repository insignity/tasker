import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';

import '../utilities.dart';

class RouterObserver extends AutoRouteObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    String from = "";
    if(previousRoute != null) from += "from ${previousRoute.settings.name}";
    l.d("Router Pushed: $from >> ${route.settings.name}");
    super.didPush(route, previousRoute);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    String from = "";
    if(previousRoute != null) from += "from ${previousRoute.settings.name}";
    l.d("Router Popped: $from >> ${route.settings.name}");
    super.didPop(route, previousRoute);
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    l.d("Router Changed: TabRoute from ${previousRoute.name} >> ${route.name}");
    super.didChangeTabRoute(route, previousRoute);
  }

  @override
  void didChangeTop(Route topRoute, Route? previousTopRoute) {
    String from = "";
    if(previousTopRoute != null) from += "from ${previousTopRoute.settings.name}";
    l.d("Router Changed Top: $from >> ${topRoute.settings.name}");
    super.didChangeTop(topRoute, previousTopRoute);
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    String from = "";
    if(previousRoute != null) from += "from ${previousRoute.name}";
    l.d("Router Initialized TabRoute: $from >> ${route.name}");
    super.didInitTabRoute(route, previousRoute);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    String from = "";
    if(previousRoute != null) from += "from ${previousRoute.settings.name}";
    l.d("Router Removed: $from >> ${route.settings.name}");
    super.didRemove(route, previousRoute);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    String from = "";
    if(oldRoute != null) from += "from ${oldRoute.settings.name}";
    l.d("Router Replaced: $from >> ${newRoute?.settings.name}");
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }

  @override
  void didStartUserGesture(Route route, Route? previousRoute) {
    String from = "";
    if(previousRoute != null) from += "from ${previousRoute.settings.name}";
    l.d("Router Started User Gesture: $from >> ${route.settings.name}");
    super.didStartUserGesture(route, previousRoute);
  }

  @override
  void didStopUserGesture() {
    l.d("Router Stopped User Gesture");
    super.didStopUserGesture();
  }
}
