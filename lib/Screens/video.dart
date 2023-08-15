import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

import '../Utils/list.dart';

class video_page extends StatefulWidget {
  const video_page({super.key});

  @override
  State<video_page> createState() => _video_pageState();
}

class _video_pageState extends State<video_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'video_details');
            },
            child: Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage("lib/Image/6.jfif"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Cars",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              final XFile? image =
                  await Global.picker.pickVideo(source: ImageSource.gallery);
              setState(() {
                Global.pic = image;
                Navigator.pushNamed(context, 'file_video_detalis');
              });
            },
            child: Icon(Icons.photo_camera_back_rounded),
          ),
        ],
      ),
    );
  }
}
