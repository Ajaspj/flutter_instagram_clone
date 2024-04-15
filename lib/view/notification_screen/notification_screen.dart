import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/core/constants/color_costants.dart';
import 'package:flutter_instagram_clone/view/notification_screen/widget/custom_notificationcard.dart';

class Notification_Screen extends StatefulWidget {
  const Notification_Screen({super.key});

  @override
  State<Notification_Screen> createState() => _Notification_ScreenState();
}

class _Notification_ScreenState extends State<Notification_Screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(0),
                child: TabBar(
                    indicatorColor: ColorConstants.primaryBlack,
                    indicatorSize: TabBarIndicatorSize.tab,
                    unselectedLabelColor:
                        ColorConstants.primaryBlack.withOpacity(.3),
                    labelColor: ColorConstants.primaryBlack,
                    dividerHeight: 0,
                    tabs: [
                      Tab(
                        text: "Following",
                      ),
                      Tab(
                        text: "You",
                      )
                    ])),
          ),
          body: Container(child: CustomNotificatinCard()),
        ));
  }
}
