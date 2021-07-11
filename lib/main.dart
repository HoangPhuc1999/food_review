import 'package:flutter/material.dart';
import 'package:foodreview_app/model/object_file.dart';
import 'package:foodreview_app/pages/post_detail_page.dart';
import 'package:foodreview_app/pages/restaurant_detail.dart';
import 'package:foodreview_app/pages/search_page.dart';
import 'package:foodreview_app/pages/splash_screen.dart';

import 'base/route.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RoutesName.splashPage,
      onGenerateRoute: (RouteSettings settings) => routeSettings(settings),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

MaterialPageRoute<dynamic> routeSettings(RouteSettings settings) {
  final Map<String, dynamic> data = settings.arguments as Map<String, dynamic>;
  switch (settings.name) {
    case RoutesName.splashPage:
      return MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => SplashScreen(),
        settings: const RouteSettings(name: RoutesName.splashPage),
      );

    case RoutesName.homePage:
      return MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => HomePage(),
        settings: const RouteSettings(name: RoutesName.homePage),
      );
    case RoutesName.restaurantDetailPage:
      return MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => RestaurantDetailPage(
          restaurantObject: data['restaurantObject'] as RestaurantObject,
        ),
        settings: const RouteSettings(name: RoutesName.homePage),
      );
    case RoutesName.searchPage:
      return MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => SearchPage(
          restaurantObjectList: data['restaurantObjectList'] as List<RestaurantObject>,
        ),
        settings: const RouteSettings(name: RoutesName.homePage),
      );
    case RoutesName.postDetailPage:
      return MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => PostDetail(
          feedPost: data['feedPost'] as FeedPost,
        ),
        settings: const RouteSettings(name: RoutesName.homePage),
      );
    default:
      return MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => SplashScreen(),
        settings: const RouteSettings(name: RoutesName.splashPage),
      );
  }
}
