import 'package:audio_player/tabs/assets_tab.dart';
import 'package:audio_player/tabs/local_tab.dart';
import 'package:audio_player/tabs/remote_tab.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Audio Player'),
          elevation: 0,
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(text: 'Assets'),
              Tab(text: 'Local'),
              Tab(text: 'Remote')
            ],
          ),
        ),
        body: TabBarView(children: [AssetsTab(), LocalTab(), RemoteTab()]),
      ),
    );
  }
}
