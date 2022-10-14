import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widget/LoginScreen.dart';
import '../Widget/SingUpScreen.dart';

class TapBarLs extends StatefulWidget {
  const TapBarLs({Key? key}) : super(key: key);

  @override
  State<TapBarLs> createState() => _TapBarLsState();
}

class _TapBarLsState extends State<TapBarLs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'BRE',
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Color.fromARGB(255, 39, 32, 22),
                    Color.fromARGB(255, 161, 130, 100),
                  ]),
            ),
          ),
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(
                icon: Icon(Icons.person),
                text: 'login',
              ),
              Tab(
                icon: Icon(Icons.person_add),
                text: 'signin',
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            LoginScreen(
              tabControll: _tabController,
            ),
            SignUpScreen(),
          ],
        ),
      ),
    );
  }
}
