import 'package:app_shared/config/logger_config.dart';
import 'package:flutter/material.dart';

class AppRouteObserver extends NavigatorObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    LoggerConfig.logger.i('didPush');
    super.didPush(route, previousRoute);
    _handleRouteChange(route);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    LoggerConfig.logger.i('didPop');
    super.didPop(route, previousRoute);
    _handleRouteChange(previousRoute);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    LoggerConfig.logger.i('didReplace');
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    _handleRouteChange(newRoute);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    LoggerConfig.logger.i('didRemove');
    super.didRemove(route, previousRoute);
    _handleRouteChange(previousRoute);
  }

  @override
  void didStartUserGesture(Route route, Route? previousRoute) {
    LoggerConfig.logger.i('didStartUserGesture');
    super.didStartUserGesture(route, previousRoute);
    _handleRouteChange(route);
  }

  @override
  void didStopUserGesture() {
    LoggerConfig.logger.i('didStopUserGesture');
    super.didStopUserGesture();
  }

  void _handleRouteChange(Route? route) {
    if (route != null) {
      var routeName = route.settings.name;
      LoggerConfig.logger.i('Current route: $routeName');
    } else {
      LoggerConfig.logger.i('Current route: null');
    }
  }
}
