import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:particles_flutter/particles_flutter.dart';
import 'package:zeeshan_portfolio/Components/floatingIcons.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  AnimationController awayAnimationController ;
  AnimationController controller;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenRatio = screenSize.width/screenSize.height;
    return Scaffold(
         backgroundColor: Color(0xff04033a),
        body: Container(
          width: screenSize.width,
          height: screenSize.height,
          child: Stack(
            children: <Widget>[
              screenSize.width < 580
                  ?
              //for less size

              Stack(
                children: [
                  FloatingIcons(isMobile: true,),
                  CircularParticle(
                    key: UniqueKey(),
                    awayRadius: 200,
                    numberOfParticles: 50,
                    speedOfParticles: 0.5,
                    height: screenSize.height,
                    width: screenSize.width,
                    onTapAnimation: true,
                    particleColor: Colors.white.withAlpha(150),
                    awayAnimationDuration: Duration(milliseconds: 600),
                    maxParticleSize: 4,
                    isRandSize: true,
                    isRandomColor: true,
                    randColorList: [
                      Colors.white38,
                      Colors.white70,
                      Colors.white24,
                    ],
                    awayAnimationCurve: Curves.bounceOut,
                    enableHover: true,
                    hoverColor: Colors.white,
                    hoverRadius: 90,
                    connectDots: false,
                    //not recommended
                  ),
                  Container(
                    height: screenSize.height,
                    width: screenSize.width,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Hello! I am ",
                              style: GoogleFonts.lato(
                                  fontSize: (screenSize.width/screenSize.height)*50, color: Colors.white)),
                          RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    fontSize: screenRatio*40, color: Colors.white),
                                children: [
                                  TextSpan(
                                      text: "Zeeshan",
                                      style: GoogleFonts.lato(
                                          fontSize: screenRatio*75,
                                          color: Colors.white)),
                                  TextSpan(
                                      text: " Bhati",
                                      style: GoogleFonts.lato(
                                          fontSize: screenRatio*75,
                                          color: Colors.tealAccent)),
                                ]),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: SizedBox()),
                              Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "I am a ",
                                    style: GoogleFonts.lato(
                                        fontSize: screenRatio*50, color: Colors.white),
                                  )),

                              Expanded(
                                flex: 5,
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: RotateAnimatedTextKit(
                                    text: [
                                      "< Developer >",
                                      "< Programmer >",
                                      "< UI Designer >",
                                      "< OPT!M!ST >"
                                    ],
                                    textStyle: GoogleFonts.lato(
                                      fontSize: screenRatio*50,
                                      color: Colors.tealAccent,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                    ),
                                    textAlign: TextAlign.start,
                                    //isRepeatingAnimation: true,
                                    repeatForever: true,
                                    duration: Duration(seconds: 2),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
                  :

              //For WEB//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
              //For WEB//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
              //For WEB//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

              Stack(
                  children: [


                    FloatingIcons(isMobile: false,),

                    CircularParticle(
                      key: UniqueKey(),
                      awayRadius: 200,
                      numberOfParticles: 150,
                      speedOfParticles: 0.5,
                      height: screenSize.height,
                      width: screenSize.width,
                      onTapAnimation: true,
                      particleColor: Colors.white.withAlpha(150),
                      awayAnimationDuration: Duration(milliseconds: 600),
                      maxParticleSize: 5,
                      isRandSize: true,
                      isRandomColor: true,
                      randColorList: [
                        Colors.white38,
                        Colors.white70,
                        Colors.white24,
                      ],
                      awayAnimationCurve: Curves.easeInOut,
                      enableHover: true,
                      hoverColor: Colors.white,
                      hoverRadius: 90,
                      connectDots: false,
                      //not recommended
                    ),

                    Container(
                      height: screenSize.height,
                      width: screenSize.width,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Hello! I am ",
                                style: GoogleFonts.lato(
                                    fontSize: (screenSize.width/screenSize.height)*25, color: Colors.white)),
                            RichText(
                              text: TextSpan(
                                  style: TextStyle(
                                      fontSize: screenRatio*40, color: Colors.white),
                                  children: [
                                    TextSpan(
                                        text: "Zeeshan",
                                        style: GoogleFonts.lato(
                                            fontSize: screenRatio*46,
                                            color: Colors.white)),
                                    TextSpan(
                                        text: " Bhati",
                                        style: GoogleFonts.lato(
                                            fontSize: screenRatio*46,
                                            color: Colors.tealAccent)),
                                  ]),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    flex: 2,
                                    child: SizedBox()),
                                Container(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "I am a ",
                                      style: GoogleFonts.lato(
                                          fontSize: screenRatio*23, color: Colors.white),
                                    )),

                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: RotateAnimatedTextKit(
                                      text: [
                                        "  < Developer >",
                                        "  < Programmer >",
                                        "  < UI Designer >",
                                        
                                      ],
                                      textStyle: GoogleFonts.lato(
                                        fontSize: screenRatio*23,
                                        color: Colors.tealAccent,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                      ),
                                      textAlign: TextAlign.start,
                                      //isRepeatingAnimation: true,
                                      repeatForever: true,
                                      duration: Duration(seconds: 2),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ])

            ],
          ),
        ));
  }

}

