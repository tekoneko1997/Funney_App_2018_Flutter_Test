import 'package:flutter/material.dart';
import 'package:funney/scenes/Home.dart';
import 'package:funney/scenes/Request.dart';
import 'package:funney/scenes/Send.dart';
import 'package:funney/scenes/Setting.dart';


class MainTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange[700],
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.send)),
                Tab(icon: Icon(Icons.file_download)),
                Tab(icon: Icon(Icons.save)),
              ],
            ),
            title: Text('Funney'),
          ),
          body: TabBarView(
            children: [
              Home(),
              Send(),
              Request(),
              Setting(),
            ],
          ),
        ),
      ),
    );
  }
}