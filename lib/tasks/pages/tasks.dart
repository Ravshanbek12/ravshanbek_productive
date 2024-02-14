import 'package:flutter/material.dart';

import '../../core/route_names/tasks_routes_names.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(TaskRouteName.notification);
          },
          child: const Text(
            "Tasks Page",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
