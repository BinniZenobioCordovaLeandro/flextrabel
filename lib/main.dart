import 'package:flextrabel/pages/home_page.dart';
import 'package:flextrabel/routes/fluro_main_router.dart';
import 'package:flextrabel/themes/light_theme.dart';
import 'package:fluro/fluro.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter/material.dart';

void main() {
  FluroMainRouter.defineRoutes();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: LightTheme().get(),
      home: HomePage(),
      builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget!),
        maxWidth: 1200,
        minWidth: 450,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(450, name: MOBILE),
          ResponsiveBreakpoint.autoScale(800, name: TABLET),
          ResponsiveBreakpoint.autoScale(1000, name: TABLET),
          ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
        background: Container(
          color: Color(0xFFF5F5F5),
        ),
      ),
      onGenerateRoute: (RouteSettings settings) {
        print('RouteSettings: ${settings.toString()}');
        return FluroRouter.appRouter
            .matchRoute(context, settings.name, routeSettings: settings)
            .route;
      },
    );
  }
}
