

  import 'package:flutter/cupertino.dart';
  import 'package:flutter/material.dart';
  import 'package:ravshanbek_productive/tasks/pages/notification.dart';
  import 'package:ravshanbek_productive/tasks/pages/tasks.dart';

  import '../route_names/tasks_routes_names.dart';

  class TasksRoute{
    static Route? onGenerateRoute(RouteSettings settings){
      final String routeName = settings.name??"";
      switch(routeName){
        case TaskRouteName.tasks:
          return CupertinoPageRoute(builder: (context)=>const TasksPage());
        case TaskRouteName.notification:
          return CupertinoPageRoute(builder: (context)=>const NotificationPage());
        default:
      }
    }
  }