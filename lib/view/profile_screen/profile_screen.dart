import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/core/constants/color_costants.dart';
import 'package:flutter_instagram_clone/core/constants/image_constants.dart';
import 'package:flutter_instagram_clone/global_widgets/global_widgets.dart';

class InstagramProfilePage extends StatelessWidget {
  const InstagramProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.lock),
        title: Text(
          "ajas.pj_",
          style: TextStyle(
            color: ColorConstants.primaryBlack,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.alternate_email,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.add_box,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.menu,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(ImageConstants.proPic),
              ),
              Column(
                children: [
                  Text("100", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                    "posts",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Text("1000", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                    "follower",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Text("1200", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                    "following",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [Text("Ajas pj"), Text("searching something new")],
              )
            ],
          ),
          CustomButton(
              buttonColor: Colors.grey.withOpacity(.3),
              havVBorder: true,
              text: "Edit profile"),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 30,
                child: Icon(Icons.add),
              ),
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(ImageConstants.proPic),
              ),
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(ImageConstants.proPic),
              ),
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(ImageConstants.proPic),
              ),
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(ImageConstants.proPic),
              ),
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(ImageConstants.proPic),
              )
            ],
          )
        ],
      ),
    );
  }
}
