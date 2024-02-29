import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/core/constants/color_costants.dart';

class CustomStoryAvatar extends StatelessWidget {
  const CustomStoryAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              SizedBox(
                height: 120,
              ),
              Container(
                padding: EdgeInsets.all(4),
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        colors: [Colors.red, Colors.blue, Colors.yellow])),
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: ColorConstants.primarWhite,
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/19399844/pexels-photo-19399844/free-photo-of-young-woman-in-white-blouse-and-black-waistcoat.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
                  ),
                ),
              ),
              Positioned(
                  bottom: 0,
                  child: Container(
                    child: Text("Live", style: TextStyle(color: Colors.red)),
                  ))
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Text("user name")
        ],
      ),
    );
  }
}
