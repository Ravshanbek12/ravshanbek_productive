import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ravshanbek_productive/core/pages/splash.dart';
import 'package:ravshanbek_productive/core/route_names/app_route_name.dart';
import 'package:ravshanbek_productive/home/widgets/home.dart';

class AppRoute{
  static Route? onGenerateRoute(RouteSettings settings){
    final String routeName = settings.name??"";
    switch(routeName){
      case AppRouteName.splash:
        return CupertinoPageRoute(builder: (context)=>const SplashScreen());
      case AppRouteName.home:
        return CupertinoPageRoute(builder: (context)=>const HomePage());
      case "/authentication":
        return CupertinoPageRoute(builder: (context)=>const Scaffold());
      default:
    }
  }
}