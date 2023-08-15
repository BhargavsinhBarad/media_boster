import 'package:flutter/material.dart';
import 'package:media_boster/Screens/video.dart';

import 'audio.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> with SingleTickerProviderStateMixin {
  late TabController tabController;
  List<Widget> tablist = [audio_page(), video_page()];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
        bottom: TabBar(
          controller: tabController,
          tabs: <Tab>[
            Tab(
              icon: Icon(Icons.audiotrack),
              text: "Audio",
            ),
            Tab(
              icon: Icon(Icons.video_camera_back_outlined),
              text: "Video",
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: tablist,
      ),
    );
  }
}
