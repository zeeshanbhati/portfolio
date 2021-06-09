import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart'; 
import 'package:url_launcher/url_launcher.dart';


class ParallexCard  extends StatefulWidget {

final double baseCardHeight;
final double baseCardWidth;
final bool  ltr;
final double imgCardHeight;
final double imgCardWidth;
final double descCardHeight;
final double descCardWidth;
final String imgPath;
final String projDesc;
final String projectTitle;
final String projectTech1;
final String projectTech2;
final String projectTech3;
final String projectTech4;
final String githubUrl;

const ParallexCard(
{this.baseCardHeight,
  this.baseCardWidth,
  this.ltr,
  this.imgCardHeight,
  this.imgCardWidth,
  this.descCardHeight,
  this.descCardWidth,
  this.imgPath,
  this.projDesc,
  this.projectTitle,
  this.projectTech1,
  this.projectTech2,
  this.projectTech3,
  this.projectTech4,
  this.githubUrl

});

  @override
  State<StatefulWidget> createState() {
    return ParallexCardState();
  }
}

class ParallexCardState extends State<ParallexCard> {

  bool isHovering=false;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      child: Container(
        height: widget.baseCardHeight,
        width: widget.baseCardWidth,
        child: Stack(
          children: [

            //Bottom Row
            Row(
              mainAxisAlignment: widget.ltr ? MainAxisAlignment.end : MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){},
                  onHover: (hover){
                    if(mounted){
                      setState(() {
                        isHovering = !isHovering;
                        //print("IShovering");
                      });
                    }
                  },
                  child: AnimatedContainer(
                    height: widget.imgCardHeight,
                    width: widget.imgCardWidth,
                    duration: Duration(milliseconds: 800),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        image: DecorationImage(
                          image: AssetImage(widget.imgPath),
                          fit:BoxFit.cover,
                          colorFilter: isHovering ? ColorFilter.mode(Colors.black.withOpacity(0), BlendMode.darken) : ColorFilter.mode(
                              Colors.black.withOpacity(0.4), BlendMode.darken),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color:  isHovering ? Colors.white.withOpacity(0.5) : Colors.black.withOpacity(0.5),
                            spreadRadius:isHovering ? 5 : 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ]
                    ),
                  ),
                )
              ],
            ),

            //Upper Row

            Row(
              mainAxisAlignment: widget.ltr ? MainAxisAlignment.start : MainAxisAlignment.end ,
              children: [
                Column(
                  crossAxisAlignment: widget.ltr ? CrossAxisAlignment.start : CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:widget.ltr ?  EdgeInsets.only(left:widget.baseCardWidth/20) : EdgeInsets.only(right:widget.baseCardWidth/20) ,
                      child: Text(widget.projectTitle,style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.tealAccent,fontSize: (screenWidth/screenHeight)*12.5,fontWeight: FontWeight.bold)),),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Card(
                      color:Color(0xff172A45) ,
                      child:Container(
                        height: widget.descCardHeight,
                        width: widget.descCardWidth,

                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            widget.projDesc,
                            style: GoogleFonts.lato(color: Color(0xffCCD6F6),fontSize: widget.descCardWidth/33,letterSpacing: 1.0,height: 1.5),),
                        ),

                      ) ,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),

                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: widget.ltr ?EdgeInsets.only(left:widget.descCardWidth/30): EdgeInsets.only(right:widget.descCardWidth/30) ,
                      child: Row(
                        children: [
                          Text(widget.projectTech1,style: GoogleFonts.lato(color:  Color(0xffCCD6F6)),),
                          SizedBox(height: 10,width: 10,),
                          Text(widget.projectTech2,style: GoogleFonts.lato(color: Color(0xffCCD6F6)),),
                          SizedBox(height: 10,width: 10,),
                          Text(widget.projectTech3,style: GoogleFonts.lato(color: Color(0xffCCD6F6)),),
                          SizedBox(height: 10,width: 10,),
                          Text(widget.projectTech4,style: GoogleFonts.lato(color:  Color(0xffCCD6F6)),),

                        ],
                      ),
                    ),
                    SizedBox(
                     height: screenHeight/33,
                     width: 2,
                    ),
                    Padding(
                      padding: widget.ltr ? EdgeInsets.only(left:widget.descCardWidth/30) : EdgeInsets.only(right:widget.descCardWidth/30),
                      child: MaterialButton(
                        child: Icon(FontAwesomeIcons.github,color: Colors.white,size: (screenWidth/screenHeight)*15,),
                        onPressed: () async{
                          String url = widget.githubUrl;
                          if (await canLaunch(url)){
                            // print('Height: '+ MediaQuery.of(context).size.height.toString());
                            // print("width: " + MediaQuery.of(context).size.width.toString());
                            await launch(url);

                          }else{
                            print("Cannot Launch");
                          }

                        },
                      ),
                    )
                  ],
                )
              ],

            )
          ],
        ),
      ),
    );
  }
}