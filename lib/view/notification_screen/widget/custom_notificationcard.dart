import 'package:flutter/material.dart';

class CustomNotificatinCard extends StatelessWidget {
  const CustomNotificatinCard({super.key});

  @override
  Widget build(BuildContext context) {
    List profileimages = ["", ""];
    return Container(
      padding: EdgeInsets.only(bottom: 3),
      child: Row(
        children: [
          profileimages.length < 2
              ? CircleAvatar(
                  radius: 22,
                )
              : Stack(
                  children: [
                    SizedBox(
                      height: 44,
                      width: 44,
                    ),
                    CircleAvatar(
                      radius: 16,
                    ),
                  ],
                ),
          SizedBox(
            width: 12,
          ),
          Text("Kareene liked your photo"),
          Spacer(),
          Container(
            height: 44,
            width: 44,
            color: Colors.blueAccent,
          )
        ],
      ),
    );
  }
}
