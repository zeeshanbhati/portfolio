

import 'package:animated_widgets/animated_widgets.dart';
import 'package:flutter/material.dart';

class FloatingIcons extends StatelessWidget {
   FloatingIcons({this.isMobile});
     final bool isMobile;
  @override
   Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(children: [
        Positioned(
          left: isMobile ? screenWidth/10 : screenWidth/30,
          top: isMobile ? screenHeight/10 : screenHeight/20,
          child: ShakeAnimatedWidget(
            enabled: true,
            duration: Duration(seconds: 3),
            shakeAngle: Rotation.deg(z: 10),
            curve: Curves.linear,
            child:Image.asset(
              "assets/flutter_outline.png",
              height: isMobile ? screenHeight/11 : screenHeight/14,
              width: isMobile ? screenWidth/7 : screenWidth/27,

            )
          ),
        ),

        Positioned(
          top: screenHeight/10,
          right: screenWidth/10,
          child: ShakeAnimatedWidget(
              enabled: true,
              duration: Duration(seconds: 3),
              shakeAngle: Rotation.deg(z: 10),
              curve: Curves.linear,
              child: Image.asset(
                "assets/firebase.png",
                height: isMobile ? screenHeight/12 : screenHeight/6,
                width: isMobile ? screenWidth/6 : screenWidth/12,
              )),
        ),

        Positioned(
          left: isMobile ? screenWidth/1.8 : screenWidth/4.8,
          bottom: screenHeight/1.6,
          child: ShakeAnimatedWidget(
              enabled: true,
              duration: Duration(seconds: 3),
              shakeAngle: Rotation.deg(z: 10),
              curve: Curves.linear,
              child: Image.asset(
                "assets/after-effects-cc.png",
                height: isMobile ? screenHeight/10 : screenHeight/13.8,
                width: isMobile ? screenWidth/7 : screenWidth/27,
              )),
        ),

        Positioned(
          right: screenWidth/20,
          bottom: isMobile ? screenHeight/18 : screenHeight/10,
          child: ShakeAnimatedWidget(
            enabled: true,
            duration: Duration(seconds: 3),
            shakeAngle: Rotation.deg(z: 10),
            curve: Curves.linear,
            child: Image.asset(
              "assets/android.png",
              height: isMobile ? screenHeight/5 : screenHeight/19,
              width: isMobile ? screenWidth/5 : screenWidth/38,
            ),
          ),
        ),

        Positioned(
          left: isMobile ? screenWidth/5 : screenWidth/3.5,
          bottom: isMobile ? screenHeight/7 : screenHeight/10,
          child: ShakeAnimatedWidget(
            enabled: true,
            duration: Duration(seconds: 3),
            shakeAngle: Rotation.deg(z: 10),
            curve: Curves.linear,
            child: Image.asset(
              "assets/pytohn.png",
              height: isMobile ? screenHeight/11 : screenHeight/10,
              width: isMobile ? screenWidth/5 : screenWidth/19.2,
            ),
          ),
        ),

        Positioned(
          left: screenWidth/19.2,
          bottom: screenHeight/4.8,
          child: ShakeAnimatedWidget(
            enabled: true,
            duration: Duration(seconds: 3),
            shakeAngle: Rotation.deg(z: 10),
            curve: Curves.linear,
            child: Image.asset(
              "assets/android.png",
              height: screenHeight/6.46,
              width: screenWidth/12.8,
            ),
          ),
        ),

        Positioned(
          right: isMobile ? screenWidth/2.5 : screenWidth/3.84,
          bottom: isMobile ? screenHeight/5.5 : screenHeight/9,
          child: ShakeAnimatedWidget(
            enabled: true,
            duration: Duration(seconds: 3),
            shakeAngle: Rotation.deg(z: 10),
            curve: Curves.linear,
            child: Image.asset(
              "assets/ps-logo.png",
              height: isMobile ? screenHeight/24 : screenHeight/10.7,
              width: isMobile ? screenWidth/14 : screenWidth/21,
            ),
          ),
        ),

        Positioned(
          left:  screenWidth/2.7,
          top: isMobile ? screenHeight/8 : screenHeight/12,
          child: ShakeAnimatedWidget(
            enabled: true,
            duration: Duration(seconds: 3),
            shakeAngle: Rotation.deg(z: 10),
            curve: Curves.linear,
            child: Image.asset(
              "assets/ps-logo.png",
              height: isMobile ? screenHeight/11 :  screenHeight/12,
              width: isMobile ? screenWidth/11 :screenWidth/24,
            ),
          ),
        ),

        Positioned(
          right: isMobile ? screenWidth/3 : screenWidth/6.4,
          bottom: isMobile ? screenHeight/3.5 : screenHeight/3,
          child: ShakeAnimatedWidget(
            enabled: true,
            duration: Duration(seconds: 3),
            shakeAngle: Rotation.deg(z: 10),
            curve: Curves.linear,
            child: Image.asset(
              "assets/flutter_outline.png",
              height: isMobile ? screenHeight/10 : screenHeight/6.4,
              width: isMobile ? screenWidth/8 : screenWidth/12.8,
            ),
          ),
        ),

        Positioned(
          left: isMobile ? screenWidth/19: screenWidth/96,
          bottom: isMobile ? screenHeight/2 : screenHeight/2,
          child: ShakeAnimatedWidget(
            enabled: true,
            duration: Duration(seconds: 3),
            shakeAngle: Rotation.deg(z: 10),
            curve: Curves.linear,
            child: Image.asset(
              "assets/pytohn.png",
              height: isMobile ? screenHeight/12 : screenHeight/4.8,
              width:  isMobile ? screenWidth/5 : screenWidth/9.6,
            ),
          ),
        ),

        Positioned(
          left: isMobile ? screenWidth/4.5: screenWidth/4,
          bottom: isMobile ? screenHeight/4 : screenHeight/3,
          child: ShakeAnimatedWidget(
            enabled: true,
            duration: Duration(seconds: 3),
            shakeAngle: Rotation.deg(z: 10),
            curve: Curves.linear,
            child: Image.asset(
              "assets/reactjs.png",
              height: isMobile ? screenHeight/12 : screenHeight/6,
              width:  isMobile ? screenWidth/5 : screenWidth/14,
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(bottom: screenHeight/32),
          child: Align(
            alignment:  Alignment.bottomCenter,
            child: ShakeAnimatedWidget(
              enabled: true,
              duration: Duration(seconds: 3),
              shakeAngle: Rotation.deg(z: 5),
              curve: Curves.linear,
              child: Image.asset(
                "assets/after-effects-cc.png",
                height: isMobile ? screenHeight/12 : screenHeight/8,
                width: isMobile ? screenWidth/10 : screenWidth/16,
              ),
            ),
          ),
        ),


        Padding(
          padding: EdgeInsets.only(top: isMobile ? screenHeight/4.5 : screenHeight/28, left: isMobile ? screenWidth/1.6 : screenWidth/3),
          child: Align(
            alignment: Alignment.topCenter,
            child: ShakeAnimatedWidget(
              enabled: true,
              duration: Duration(seconds: 3),
              shakeAngle: Rotation.deg(z: 5),
              curve: Curves.linear,
              child: Image.asset(
                "assets/reactjs.png",
                height:  isMobile ? screenHeight/8 : screenHeight/4,
                width:screenWidth/10,
              ),
            ),
          ),
        ),

        
        Padding(
          padding: EdgeInsets.only(top: isMobile ? screenHeight/14 : screenHeight/32, left: screenWidth/64),
          child: Align(
            alignment: Alignment.topCenter,
            child: ShakeAnimatedWidget(
              enabled: true,
              duration: Duration(seconds: 3),
              shakeAngle: Rotation.deg(z: 5),
              curve: Curves.linear,
              child: Image.asset(
                "assets/firebase.png",
                height:  isMobile ? screenHeight/14 : screenHeight/8,
                width:screenWidth/16,
              ),
            ),
          ),
        )
      ]),
    );
  }
  
}