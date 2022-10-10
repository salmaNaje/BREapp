import 'package:bre/screens/rent.dart';
import 'package:bre/screens/selling.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TabBarScreenSL extends StatefulWidget {
  const TabBarScreenSL({super.key});

  @override
  State<TabBarScreenSL> createState() => _TabBarScreenSLState();
}

class _TabBarScreenSLState extends State<TabBarScreenSL> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey.shade200,
            elevation: 0,
            title: Text('BRE'),
            bottom: TabBar(
              unselectedLabelColor: Color.fromARGB(255, 161, 130, 100),
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 161, 130, 100),
                    Color.fromARGB(255, 252, 207, 149)
                  ]),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.redAccent),
              tabs: <Widget>[
                Tab(
                  text: '      For Rent      ',
                ),
                Tab(
                  text: '      For Sell      ',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Rent(),
              Selling(),
            ],
          ),
        ));
  }
}
