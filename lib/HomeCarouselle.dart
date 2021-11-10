// ignore_for_file: file_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tiktok/VideoPlayer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map> videoItems = [
    {
      "titre": "assets/video/video1.mov",
    },
    {
      "titre": "assets/video/video2_0.mp4",
    },
    {
      "titre": "assets/video/video2.mp4",
    }
  ];


  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          height: double.infinity,
        scrollDirection: Axis.vertical,
        viewportFraction: 1.0,
      ),
      items: videoItems.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                    color: const Color(0xFF141518),
              child: Stack(
                children: const [VideoScroll()],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}

