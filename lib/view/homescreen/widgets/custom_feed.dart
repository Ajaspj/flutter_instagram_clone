import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_instagram_clone/core/constants/color_costants.dart';

class CustomFeed extends StatefulWidget {
  const CustomFeed({super.key});

  @override
  State<CustomFeed> createState() => _CustomFeedState();
}

List<String> postimageslist = [
  "https://cdn.pixabay.com/photo/2017/03/27/15/08/backpacker-2179282__340.jpg",
  "https://cdn.pixabay.com/photo/2017/03/27/14/59/beach-2179239__340.jpg",
  "https://cdn.pixabay.com/photo/2017/03/27/14/59/adult-2179242_640.jpg"
];
int currentpage = 1;

class _CustomFeedState extends State<CustomFeed> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.primarWhite,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  "https://cdn.pixabay.com/photo/2017/03/27/15/21/man-2179358__340.jpg"),
            ),
            title: Row(
              children: [
                Text(
                  "thankappan",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.verified,
                  size: 15,
                  color: ColorConstants.primaryBlue,
                ),
              ],
            ),
            subtitle: Row(
              children: [
                Text(
                  "tokyo, japan",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 11),
                )
              ],
            ),
            trailing: Icon(Icons.more_horiz),
          ),
          Stack(
            children: [
              SizedBox(
                  height: 375,
                  child: PageView.builder(
                    itemCount: postimageslist.length,
                    itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(postimageslist[index]))),
                    ),
                  )),
              Positioned(
                right: 14,
                top: 14,
                child: Container(
                  child: Text(
                    "1/3",
                    style: TextStyle(color: ColorConstants.primarWhite),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  decoration: BoxDecoration(
                      color: ColorConstants.primaryBlack.withOpacity(.7),
                      borderRadius: BorderRadius.circular(13)),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
