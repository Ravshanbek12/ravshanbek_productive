import 'package:flutter/material.dart';
import 'package:ravshanbek_productive/core/routse/calendar_route.dart';
import 'package:ravshanbek_productive/core/routse/create_routs.dart';
import 'package:ravshanbek_productive/core/routse/expanse_routs.dart';
import 'package:ravshanbek_productive/core/routse/stats_route.dart';
import 'package:ravshanbek_productive/core/routse/tasks_route.dart';
import 'package:ravshanbek_productive/home/widgets/destination.dart';




class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var index = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: IndexedStack(
              index: index,
              children: const [
                DestinationPage(onGenerateRoute: TasksRoute.onGenerateRoute),
                DestinationPage(onGenerateRoute: ExpanseRoute.onGenerateRoute),
                DestinationPage(onGenerateRoute: CreateRoute.onGenerateRoute),
                DestinationPage(onGenerateRoute: CalendarRoute.onGenerateRoute),
                DestinationPage(onGenerateRoute: TasksRoute.onGenerateRoute),
                DestinationPage(onGenerateRoute: StatsRoute.onGenerateRoute),
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            height: 70 + MediaQuery.of(context).padding.top,
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(16),
              ),
            ),
            child: Row(
              children: List.generate(5, (index) => Expanded(
                          child: GestureDetector(
                        onTap: () {
                          this.index = index;
                          setState(
                            () {},
                          );
                        },
                        child: const Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                      ))),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}