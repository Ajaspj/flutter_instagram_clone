import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/core/constants/color_costants.dart';
import 'package:flutter_instagram_clone/core/constants/image_constants.dart';
import 'package:flutter_instagram_clone/global_widgets/global_widgets.dart';
import 'package:flutter_instagram_clone/view/login_screen/login_screen.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(ImageConstants.instaLogoPng),
              SizedBox(
                height: 52,
              ),
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(ImageConstants.proPic),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "ajas.pj_",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 12,
              ),
              CustomButton(
                buttonColor: ColorConstants.primaryBlue,
                havVBorder: false,
                text: "Log in",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                },
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Switch Accounts",
                style: TextStyle(
                    color: ColorConstants.primaryBlue,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(vertical: 25),
          decoration: BoxDecoration(border: Border(top: BorderSide(width: .1))),
          child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: "Dont you have an account? ",
                  style: TextStyle(
                      color: ColorConstants.primaryBlack.withOpacity(.4)),
                  children: [
                    TextSpan(
                        text: "Sign Up",
                        style: TextStyle(
                            color: ColorConstants.primaryBlack,
                            fontWeight: FontWeight.bold))
                  ]))),
    );
  }
}
