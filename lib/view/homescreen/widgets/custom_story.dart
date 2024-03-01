import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/core/constants/color_costants.dart';

class CustomStoryAvatar extends StatelessWidget {
  const CustomStoryAvatar({
    super.key,
    this.isLive = false,
    required this.proPic,
    required this.userName,
  });
  final String proPic;
  final String userName;
  final bool isLive;

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
                child: isLive == true
                    ? Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                colors: [
                                  Colors.pink,
                                  Colors.red,
                                ]),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 4, color: ColorConstants.primarWhite)),
                        child: Center(
                          child: Text(
                            "Live",
                            style: TextStyle(
                                color: ColorConstants.primarWhite,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    : SizedBox(),
              )
            ],
          ),
          SizedBox(height: 3),
          Text(userName)
        ],
      ),
    );
  }
}
