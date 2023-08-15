import 'package:flutter/material.dart';
import 'package:media_boster/Utils/model.dart';

import '../Utils/list.dart';

class audio_page extends StatefulWidget {
  const audio_page({super.key});

  @override
  State<audio_page> createState() => _audio_pageState();
}

class _audio_pageState extends State<audio_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: audio
              .map(
                (e) => GestureDetector(
                  onTap: () {
                    model m1 = model(
                      audio: e['audio'],
                      image: e['image'],
                      title: e['title'],
                    );

                    Navigator.pushNamed(context, 'audio_details',
                        arguments: m1);
                  },
                  child: Container(
                    height: 120,
                    width: double.infinity,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage(
                                  e['image'],
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          e['title'],
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
