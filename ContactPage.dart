import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:particles_flutter/particles_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Components/contactIcons.dart';


// ignore: must_be_immutable
class Gal extends StatelessWidget {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenRatio = screenHeight/screenWidth;
  
    return Scaffold(
      backgroundColor: Color(0xFF000040),
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: Stack(
          children: [
            screenWidth < 540 ?
            //for less size
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



                SingleChildScrollView(
                  child: Column(
                      children:[

                        SizedBox(
                          height: screenHeight/12,width: screenRatio*5,),
                        Center(child: Image.asset("assets/profilepic.png",scale: 6,)),
                        SizedBox(height: screenRatio*25,width: screenRatio*5,),
                        Center(child: Text("Get in touch with me",style: GoogleFonts.lato(color: Colors.tealAccent,fontSize: screenRatio*10),)),

                        SizedBox(height: screenHeight/84.5*2,),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: screenRatio*40,
                                  width: screenWidth/4.56,
                                  decoration:BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.white,width: 3),
                                  ) ,
                                  child: MaterialButton(
                                    child: Image.asset("assets/linkedin.png",scale: 1,),
                                    onPressed: () async {

                                      String url= "https://linkedin.com/in/zeeshanbhati99";
                                      if (await canLaunch(url)){


                                        await launch(url);

                                      }else{
                                        Scaffold.of(context).showSnackBar(SnackBar(content: Text("Error found")));
                                      }


                                    },
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("Zeeshan Bhati",style: GoogleFonts.lato(fontSize: 12,color: Colors.tealAccent),)
                              ],
                            ),
                            SizedBox(width: screenWidth/10,height:screenWidth/80,),
                            Column(
                              children: [
                                Container(
                                  height: screenRatio*40,
                                  width: screenWidth/4.56,
                                  decoration:BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.white,width: 3),
                                  ) ,
                                  child: MaterialButton(
                                    child: Image.asset("assets/githubw.png",scale: 1,),
                                    onPressed: () async {

                                      String url= "https://github.com/zeeshanbhati";
                                      if (await canLaunch(url)){

                                        await launch(url);

                                      }else{
                                        Scaffold.of(context).showSnackBar(SnackBar(content: Text("Error found")));
                                      }


                                    },
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("zeeshanbhati",style: GoogleFonts.lato(fontSize: 12,color: Colors.tealAccent),)
                              ],
                            ),
                          ],
                        ),










                        SizedBox(height: 20,),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: screenRatio*40,
                                  width: screenWidth/4.56,
                                  decoration:BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.white,width: 3),
                                  ) ,
                                  child: MaterialButton(
                                    child: Image.asset("assets/twitter.png",scale: 1,),
                                    onPressed: () async {

                                      String url= "https://twitter.com/zeeshan__07";
                                      if (await canLaunch(url)){

                                        await launch(url);

                                      }else{
                                        Scaffold.of(context).showSnackBar(SnackBar(content: Text("Error found")));
                                      }


                                    },
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("Zeeshan__07",style: GoogleFonts.lato(fontSize: 12,color: Colors.tealAccent),)
                              ],
                            ),
                            SizedBox(width: screenWidth/10,height:screenHeight/80,),
                            Column(
                              children: [
                                Container(
                                  height: screenRatio*40,
                                  width: screenWidth/4.56,
                                  decoration:BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.white,width: 3),
                                  ) ,
                                  child: MaterialButton(
                                    child: Image.asset("assets/instagram.png",scale: 1,),
                                    onPressed: () async {

                                      String url= "https://instagram.com/zeeshan__07";
                                      if (await canLaunch(url)){

                                        await launch(url);

                                      }else{
                                        Scaffold.of(context).showSnackBar(SnackBar(content: Text("Error found")));
                                      }


                                    },
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("zeeshan__07",style: GoogleFonts.lato(fontSize: 12,color: Colors.tealAccent),)
                              ],
                            ),
                          ],
                        ),

                        SizedBox(height: 20,),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: screenRatio*40,
                                  width: screenWidth/4.56,
                                  decoration:BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.white,width: 3),
                                  ) ,
                                  child: MaterialButton(
                                    child: Image.asset("assets/discord.png",scale: 1,),
                                    onPressed: () async {

                                      String url= "https://discordapp.com/users/xxxx/714074751433441372";
                                      if (await canLaunch(url)){

                                        await launch(url);

                                      }else{
                                        Scaffold.of(context).showSnackBar(SnackBar(content: Text("Error found")));
                                      }


                                    },
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("theVigilante#5154",style: GoogleFonts.lato(fontSize: 12,color: Colors.tealAccent),)
                              ],
                            ),
                            SizedBox(width: screenWidth/10,height:screenHeight/80,),
                            Column(
                              children: [
                                Container(
                                  height: screenRatio*40,
                                  width: screenWidth/4.56,
                                  decoration:BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.white,width: 3),
                                  ) ,
                                  child: MaterialButton(
                                    child: Image.asset("assets/resume.png",scale:1,),
                                    onPressed: () async {

                                      String url= "https://drive.google.com/file/d/1P19yoghlSaHg-MtDa7rvIVbdwXSaUVZy/view";
                                      if (await canLaunch(url)){

                                        await launch(url);

                                      }else{
                                        Scaffold.of(context).showSnackBar(SnackBar(content: Text("Error found")));
                                      }


                                    },
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text("My Resume",style: GoogleFonts.lato(fontSize: 12,color: Colors.tealAccent),)
                              ],
                            ),
                          ],
                        ),

                        SizedBox(height: screenHeight/42,width:screenWidth/41.1 ,),

                        GestureDetector(
                          onTap: () async {

                            String url= "https://gmail.com/#inbox?compose=new";
                            if (await canLaunch(url)){

                              await launch(url);

                            }else{
                              Scaffold.of(context).showSnackBar(SnackBar(content: Text("Error found")));
                            }

                          },
                          child: Container(
                            width: screenWidth/1.3,
                            decoration: BoxDecoration(
                              border: Border.all(width: 2.0,color: Colors.white),
                              borderRadius: BorderRadius.circular(20),

                            ),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/email.png",height: screenHeight/28,width: screenWidth/13.7,),

                                SizedBox(width:screenWidth/20,height: screenHeight/80,),

                                Text("zeeshanbhati99@gmail.com",style: GoogleFonts.lato(fontSize: 15,color: Colors.tealAccent),),





                              ],
                            ),
                          ),
                        )






                      ] ),
                ),

              ],
            )

                :

            // for big size///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            Container(

              child: Stack(
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
                      Colors.tealAccent,
                    ],
                    awayAnimationCurve: Curves.easeInOutBack,
                    enableHover: true,
                    hoverColor: Colors.white,
                    hoverRadius: 90,
                    connectDots: false,
                    //not recommended
                  ),

                  Positioned(
                      bottom: -20,
                      left: -20,
                      child: Image.asset("assets/bottom.png",height: screenHeight/4.8,width: screenWidth/9.6 ,)),

                  Positioned(
                    top: -20,
                    right: -20,
                    child: Image.asset("assets/bottom.png",height: screenHeight/4.8,width: screenWidth/9.6,),),

                  Column(

                    children: [
                      SizedBox(height: 40,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        
                          Container(child: Image.asset("assets/profilepic.png"),height: screenHeight/3.23,width: screenWidth/6.4,),
                        ],
                      ),

                      Expanded(child: Text("Get in touch with me",style: GoogleFonts.poiretOne(textStyle: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.aspectRatio*25)),)),
                      
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Expanded(child: SizedBox(width: screenWidth/64,),flex: 4,),
                            Expanded(child: ContactIcons(socialmediaicon: "assets/linkedin.png",profileurl: "https://linkedin.com/in/zeeshanbhati99",displaytext: "Zeeshan Bhati")),
                            Expanded(child: ContactIcons(socialmediaicon: "assets/githubw.png",profileurl: "https://github.com/zeeshanbhati",displaytext: "zeeshanbhati")),
                            Expanded(child: ContactIcons(socialmediaicon: "assets/twitter.png",profileurl: "https://twitter.com/zeeshan__07",displaytext: "Zeeshan__07")),
                            Expanded(child: ContactIcons(socialmediaicon: "assets/instagram.png",profileurl: "https://instagram.com/zeeshan__07",displaytext: "zeeshan__07")),
                            Expanded(child: SizedBox(width: screenWidth/64,),flex: 4,),




                          ] ,
                        ),
                      ),

                      SizedBox(height: screenWidth/64,),

                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(flex:4,child: SizedBox(),),
                            Expanded(flex:1,child: ContactIcons(socialmediaicon: "assets/email.png",profileurl: "https://gmail.com/#inbox?compose=new",displaytext: "zeeshanbhati99@gmail.com",)),
                            Expanded(flex:1,child: ContactIcons(socialmediaicon: "assets/resume.png",profileurl: "https://drive.google.com/file/d/1P19yoghlSaHg-MtDa7rvIVbdwXSaUVZy/view",displaytext: "My Resume",)),
                            Expanded(flex:1,child: ContactIcons(socialmediaicon: "assets/discord.png",profileurl: "https://discordapp.com/users/xxxx/714074751433441372",displaytext: "theVigilante#5154",)),
                            Expanded(child: SizedBox(),flex:4),
                          ],
                        ),
                      ),

                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
