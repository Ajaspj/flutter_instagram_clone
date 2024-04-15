import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/view/notification_screen/widget/custom_notificationcard.dart';

class CustomCardBuilder extends StatelessWidget {
  const CustomCardBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Title",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Column(
            children: List.generate(4, (index) => CustomNotificatinCard()),
          )
        ],
      ),
    );
  }
}
