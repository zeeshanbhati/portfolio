import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:particles_flutter/particles_flutter.dart';
import 'package:zeeshan_portfolio/Components/MobileProjectCart.dart';

import 'Components/WebCard.dart';


class DisplayCardParalex extends StatelessWidget {
  static final String id = "DisplayCardParalex.dart";
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenRatio = screenWidth / screenHeight;


    return Scaffold(
        backgroundColor: Color(0xff04033a),
        body: Container(
            child: screenWidth < 580 ?
            Stack(
              children: [
                CircularParticle(
                  key: UniqueKey(),
                  awayRadius: 100,
                  numberOfParticles: 100,
                  speedOfParticles: 0.5,
                  height: screenHeight,
                  width: screenWidth,
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
                  awayAnimationCurve: Curves.easeInOutBack,
                  enableHover: true,
                  hoverColor: Colors.white,
                  hoverRadius: 90,
                  connectDots: false,

                  //not recommended
                ),
                Padding(
                  padding: EdgeInsets.only(top:50.0,left: 20,right: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        MobileProjectCard(
                          imgPath: "assets/fluix.jpg",
                          projectTitle: "FLUIX",
                          projDesc: "Ready to Responsive UI Flutter Templates for different categoriesSuch as Login, Signup, Drawer, etc. User can just copy and paste thecode to get the desired UI",
                          projectTech1: "Flutter",
                          projectTech2: "Firebase",
                          projectTech3: "Adobe Xd",
                          projectTech4: "Figma",
                          githubUrl: " https://github.com/zeeshanbhati/Fluix",
                        ),
                        SizedBox(height: 30,),

                        MobileProjectCard(
                          imgPath: "assets/classclue.jpg",
                          projectTitle: "ClassClue",
                          projDesc: "The apps were designed to facilitate teacher-student communication. Students can communicate with the faculty, view laboccupancy, and timetable of faculty members. Google Firebaseserved as the database, which was linked to Google Sheets for easy changes.",
                          projectTech1: "Android",
                          projectTech2: "Firebase",
                          projectTech3: "Java",
                          projectTech4: "Figma",
                          githubUrl: "https://github.com/zeeshanbhati/My-android-Project",
                        ),
                        SizedBox(height: 30,),

                        MobileProjectCard(
                          imgPath: "assets/madicate_3.jpg",
                          projectTitle: "MindFullness",
                          projDesc: "A Flutter APP for people struggling with mental Health, PeopleSeeking for help, chat with other users and doctor regarding therapy, Doctors need to Apply for the Verification ThroughApp",
                          projectTech1: "Flutter",
                          projectTech2: "Firebase",
                          projectTech3: "Adobe Xd",
                          projectTech4: "Figma",
                          githubUrl: "https://github.com/HAC-2020/The-Mindfulness",
                        ),
                        SizedBox(height: 30,),

                        MobileProjectCard(
                          imgPath: "assets/awstxtr.jpg",
                          projectTitle: "AWSTXTR",
                          projDesc: "A Document Segregtion based on AWS services to exract the key value pair form the document,This app can be used to filter key value fields of document",
                          projectTech1: "AWS SDK",
                          projectTech2: "HTML/CSS",
                          projectTech3: "JavaScript",
                          projectTech4: "Figma",
                          githubUrl: "https://github.com/zeeshanbhati/aws-document-project",
                        ),
                        SizedBox(height: 30,),

                        MobileProjectCard(
                          imgPath: "assets/codewalk.jpg",
                          projectTitle: "CODEWALK",
                          projDesc: "A local coding platform using PHP, HTML, and CSS for college purpose,\nLanguage C and C++ are supported, Seperate Login for Admin , teachers , Students are available, Teachers can Manage Practical List",
                          projectTech1: "HTML/CSS",
                          projectTech2: "Javascript",
                          projectTech3: "PHP",
                          projectTech4: "SQL",
                          githubUrl: "http://github.com/zeeshanbhati",

                        ),
                        SizedBox(height: 30,),



                      ],
                    ),
                  ),
                ),
              ],
            )

                :
            ////////////////////////////////////////////////////////////////   FOR WEB //////////////////////////////////////////////
            ////////////////////////////////////////////////////////////////   FOR WEB //////////////////////////////////////////////
            ////////////////////////////////////////////////////////////////   FOR WEB //////////////////////////////////////////////
            Stack(
              children: [
                CircularParticle(
                  key: UniqueKey(),
                  awayRadius: 200,
                  numberOfParticles: 150,
                  speedOfParticles: 0.5,
                  height: screenHeight,
                  width: screenWidth,
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
                  awayAnimationCurve: Curves.easeInOutBack,
                  enableHover: true,
                  hoverColor: Colors.white,
                  hoverRadius: 90,
                  connectDots: false,
                  //not recommended
                ),

                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          height: screenHeight / 10,
                          width: screenWidth / 19,
                          child: WavyAnimatedTextKit(
                            textStyle: GoogleFonts.lato(
                                fontSize: screenRatio * 20,
                                color: Colors.tealAccent,
                                letterSpacing: screenRatio * 5),
                            text: [
                              "Projects",
                            ],
                            isRepeatingAnimation: false,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 10,
                      ),

                      ParallexCard(
                        projectTitle: "FLUIX",
                        projDesc:
                        "Ready to Responsive UI Flutter Templates for different categoriesSuch as Login, Signup, Drawer, etc. User can just copy and paste thecode to get the desired UI",
                        projectTech1: "Flutter",
                        projectTech2: "Firebase",
                        projectTech3: "Adobe XD",
                        projectTech4: "Figma",
                        baseCardHeight: screenHeight / 2.5,
                        baseCardWidth: screenWidth / 1.9,
                        imgCardHeight: screenHeight / 2.7,
                        imgCardWidth: screenWidth / 3.5,
                        descCardHeight: screenHeight / 6.4,
                        descCardWidth: screenWidth / 3.8,
                        imgPath: "assets/simple.jpg",
                        githubUrl: "https://github.com/zeeshanbhati/Fluix",
                        ltr: false,
                      ),

                      ParallexCard(
                        projectTitle: "Mindfullness",
                        projDesc:
                        "A Flutter APP for people struggling with mental Health, PeopleSeeking for help, chat with other users and doctor regarding therapy, Doctors need to Apply for the Verification ThroughApp",
                        projectTech1: "Flutter",
                        projectTech2: "Firebase",
                        projectTech3: "Adobe XD",
                        projectTech4: "Figma",
                        baseCardHeight: screenHeight / 2.5,
                        baseCardWidth: screenWidth / 1.9,
                        imgCardHeight: screenHeight / 2.7,
                        imgCardWidth: screenWidth / 3.5,
                        descCardHeight: screenHeight / 6.4,
                        descCardWidth: screenWidth / 3.8,
                        imgPath: "assets/mindfullness.jpg",
                        githubUrl: "https://github.com/HAC-2020/The-Mindfulness",
                        ltr: true,
                      ),

                      // SizedBox(
                      //   height: 40,
                      // ),

                      ParallexCard(
                        projectTitle: "CLASSCLUE",
                        projDesc:
                        "The apps were designed to facilitate teacher-student communication. Students can communicate with the faculty, view laboccupancy, and timetable of faculty members. Google Firebaseserved as the database, which was linked to Google Sheets for easy changes.",
                        projectTech1: "Android",
                        projectTech2: "Firebase",
                        projectTech3: "Java",
                        projectTech4: "Figma",
                        baseCardHeight: screenHeight / 2.5,
                        baseCardWidth: screenWidth / 1.9,
                        imgCardHeight: screenHeight / 2.7,
                        imgCardWidth: screenWidth / 3.5,
                        descCardHeight: screenHeight / 6.1,
                        descCardWidth: screenWidth / 3.8,
                        imgPath: "assets/classclue.jpg",
                        githubUrl: "https://github.com/zeeshanbhati/My-android-Project",
                        ltr: false,
                      ),

                      ParallexCard(
                        projectTitle: "CODEWALK",
                        projDesc:
                        "A local coding platform using PHP, HTML, and CSS for college purpose,\nLanguage C and C++ are supported, Seperate Login for Admin , teachers , Students are available, Teachers can Manage Practical List",
                        projectTech1: "HTML/CSS",
                        projectTech2: "SQL",
                        projectTech3: "PHP",
                        projectTech4: "JavaScript",
                        baseCardHeight: screenHeight / 2.5,
                        baseCardWidth: screenWidth / 1.9,
                        imgCardHeight: screenHeight / 2.7,
                        imgCardWidth: screenWidth / 3.5,
                        descCardHeight: screenHeight / 6.1,
                        descCardWidth: screenWidth / 3.8,
                        imgPath: "assets/codewalk.jpg",
                        githubUrl: "https://github.com/zeeshanbhati",
                        ltr: true,

                      ),

                      ParallexCard(
                        projectTitle: "AWS TextRact",
                        projDesc:
                        "A Document Segregtion based on AWS services to exract the key value pair form the document,This app can be used to filter key value fields of document",
                        projectTech1: "HTML/CSS",
                        projectTech2: "SQL",
                        projectTech3: "PHP",
                        projectTech4: "JavaScript",
                        baseCardHeight: screenHeight / 2.5,
                        baseCardWidth: screenWidth / 1.9,
                        imgCardHeight: screenHeight / 2.7,
                        imgCardWidth: screenWidth / 3.5,
                        descCardHeight: screenHeight / 6.1,
                        descCardWidth: screenWidth / 3.8,
                        imgPath: "assets/awstxtr.jpg",
                        githubUrl: "https://github.com/zeeshanbhati/aws-document-project",
                        ltr: false,
                      ),


                    ],
                  ),
                ),
              ],
            )

        ));
  }
}

