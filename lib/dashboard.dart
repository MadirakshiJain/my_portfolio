import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:my_portfolio/appColor.dart';
import 'package:my_portfolio/appTextStyles.dart';
import 'package:my_portfolio/constants.dart';



class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        elevation: 0,
      
        toolbarHeight: 80,
        titleSpacing: 100,
        title: Row(
          children: [
            Text("Portfolio",
            style: AppTextStyles.headerTextStyle(color: Colors.white) ,),
            Spacer(),
            Text("Home",
            style: AppTextStyles.headerTextStyle(color: Colors.white)),
            SizedBox(width: 30),
            Text("About",
            style: AppTextStyles.headerTextStyle(color: Colors.white)),
            SizedBox(width: 30),
            Text("Services",
            style: AppTextStyles.headerTextStyle(color: Colors.white)),
            SizedBox(width: 30),
            Text("Work",
            style: AppTextStyles.headerTextStyle(color: Colors.white)),
            SizedBox(width: 30),
            Text("Contact",
            style: AppTextStyles.headerTextStyle(color: Colors.white)),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              SingleChildScrollView(
                padding: EdgeInsets.only(
                  top: size.height*0.2,
                  left: size.width*0.2,
                  right: size.width*0.2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text("Hello , It's Me",
                     style: AppTextStyles.montserratStyle(
                      color: Colors.white),
                      ).animate() // Start animation chain
                       .fadeIn() // Fade in effect
                       .moveY(begin: -100, end: 0, duration: 1200.ms) // Move down by 100 pixels
                       .then() // Chain another animation
                       .shimmer(),
                       
                    Constants.sizedBox(height: 15.0),

                    Text("Madirakshi Jain",
                    style: AppTextStyles.headingStyles(),
                    ).animate() // Start animation chain
                     .fadeIn() // Fade in effect
                     .moveX(begin: 100, end: 0, duration: 1400.ms) // Move right by 100 pixels
                     .then() // Chain another animation
                     .shimmer(),
                     
                     Constants.sizedBox(height: 15.0),

                     Row(
                      children: [
                        Text("And  I\'m a  ",style: AppTextStyles.montserratStyle(color: Colors.white),),
                        AnimatedTextKit(animatedTexts: 
                        [
                          TyperAnimatedText("Flutter Developer",textStyle: AppTextStyles.montserratStyle(color: Colors.lightBlue),),
                          TyperAnimatedText("Freelancer",textStyle: AppTextStyles.montserratStyle(color: Colors.lightBlue)),
                          TyperAnimatedText("Creater",textStyle: AppTextStyles.montserratStyle(color: Colors.lightBlue)),
                        ],
                          pause: const Duration(milliseconds: 1000),
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,)
                      ],
                    ).animate() // Begin the animation chain
                     .fadeIn() // Fade in effect
                     .moveX(begin: -100, end: 0, duration: 1400.ms) // Move in from the left
                     .then() // Chain another animation
                     .shimmer(),

                     Constants.sizedBox(height: 15.0),
                         
                     SizedBox(
                       width: size.width*0.5,
                         child: Text("Enthusiastic and dedicated person with a passion for Application and Web Developer in Flutter."
                         " Possessing strong interpersonal and communication skills, with a keen ability to work collaboratively in team settings. "
                          "Skilled in problem-solving and quick to adapt to new challenges.",
                            style: AppTextStyles.normalStyle(), 
                            ).animate() // Start animation chain
                       .fadeIn() // Fade in effect
                       .moveY(begin: -100, end: 0, duration: 1600.ms) // Move down by 100 pixels
                       .then() // Chain another animation
                       .shimmer(),
                       ),
                     
                      Constants.sizedBox(height: 25.0),
                      
                      Row(
                        children: [
                             buildSocialButton(asset: 'assets/git.png', ),
                          Constants.sizedBox(width: 25.0),
                          buildSocialButton(asset: 'assets/in.png', ),
                                                   ],
                      ).animate() // Start animation chain
                        .fadeIn() // Fade in effect
                        .moveY(begin: 10, end: 0, duration: 1600.ms) // Move up from 10 pixels below to its original position
                        .shimmer(),
                      Constants.sizedBox(height: 20.0),

                      buildMaterialButton(onTap: () {  }).animate() // Start animation chain
                        .fadeIn() // Fade in effect
                        .moveY(begin: 10, end: 0, duration: 1800.ms) // Move up from 10 pixels below to its original position
                        .shimmer(),
                      ]
              ),
           ), ],
          )
      ],),
    );
  }

  MaterialButton buildMaterialButton({required VoidCallback onTap}) {
    return MaterialButton(
                      hoverColor: AppColors.aqua,
                      splashColor: AppColors.lawGreen,
                      elevation: 6,
                      focusElevation: 12,
                      color: AppColors.themeColor,
                      padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 10),
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none
                        ),
                        height: 46,
                        minWidth: 130,
                      onPressed: onTap,
                    child: Text("Download CV",style: AppTextStyles.headerTextStyle(color: AppColors.bgColor),),);
  }

  Ink buildSocialButton({required String asset, 
  //required bool hover
  }) {
    return Ink(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.themeColor, width: 2.0),
        color: AppColors.bgColor,
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(6),
      child: Image.asset(
        asset,
        width: 10,
        height: 12,
        color: AppColors.bgColor
        // fit: BoxFit.fill,
      ),
    );
  }
}