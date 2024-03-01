import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/core/constants/image_constants.dart';
import 'package:flutter_instagram_clone/view/dummy_db.dart';
import 'package:flutter_instagram_clone/view/homescreen/widgets/custom_feed.dart';
import 'package:flutter_instagram_clone/view/homescreen/widgets/custom_story.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.camera_alt_outlined),
        title: Image.asset(
          ImageConstants.instaLogoPng,
          scale: 1.5,
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.live_tv))],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  DummyDb.storyList.length,
                  (index) => CustomStoryAvatar(
                        proPic: DummyDb.storyList[index]["proPic"],
                        userName: DummyDb.storyList[index]["userName"],
                        isLive: DummyDb.storyList[index]["isLive"],
                      )),
            ),
          ),
          CustomFeed()
        ],
      ),
    );
  }
}
