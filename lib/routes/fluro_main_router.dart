import 'package:flextrabel/pages/feedback_page.dart';
import 'package:flextrabel/pages/home_page.dart';
import 'package:flextrabel/pages/list_page.dart';
import 'package:flextrabel/pages/pay_page.dart';
import 'package:fluro/fluro.dart';

class FluroMainRouter {
  static FluroRouter defineRoutes() {
    return FluroRouter.appRouter
      ..define(
        '/',
        handler: Handler(
          handlerFunc: (context, params) {
            return HomePage();
          },
        ),
      )
      ..define(
        'list',
        handler: Handler(
          handlerFunc: (context, params) {
            return ListPage();
          },
        ),
      )
      ..define(
        'pay',
        handler: Handler(
          handlerFunc: (context, params) {
            return PayPage();
          },
        ),
      )
      ..define(
        'feedback',
        handler: Handler(
          handlerFunc: (context, params) {
            return FeedbackPage();
          },
        ),
      );
  }
}
