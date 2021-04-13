import 'package:flutter/material.dart';
import 'package:placeholder_api/src/ui/pages/pages.dart';
import 'routes_names.dart';

class RouterManager {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HOME:
        return _getPage(settings, HomePage());
      case LOGIN:
        return _getPage(settings, LoginPage());
      case PRACTICE:
        return _getPage(settings, PracticePage());
      default:
        return _errorRoute();
    }
  }

  static PageRoute<dynamic> _getPage(RouteSettings settings, Widget page) {
    return _createPageRoute(settings, page);
  }

  static PageRouteBuilder<dynamic> _createPageRoute(
      RouteSettings settings, Widget page) {
    return PageRouteBuilder(
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return page;
      },
      transitionsBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) {
        return child;
      },
      settings: settings,
    );
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (BuildContext context) => const Scaffold(
        body: Center(
          child: Text('Error Route'),
        ),
      ),
    );
  }
}
