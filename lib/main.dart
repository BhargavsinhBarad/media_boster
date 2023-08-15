import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:media_boster/Screens/file_video.dart';
import 'package:media_boster/Screens/splash_screen.dart';
import 'package:media_boster/Screens/video_details.dart';

import 'Screens/audio_details.dart';
import 'Screens/home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(useMaterial3: true),
      darkTheme: ThemeData.dark(),
      routes: {
        '/': (ctx) => Splash(),
        'home': (ctx) => home(),
        'audio_details': (ctx) => audio_detail(),
        'video_details': (ctx) => video_detalis(),
        'file_video_detalis': (ctx) => file_video_detalis()
      },
    ),
  );
}
