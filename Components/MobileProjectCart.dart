import 'package:expansion_card/expansion_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileProjectCard extends StatelessWidget {
  final String imgPath;
  final String projDesc;
  final String projectTitle;
  final String projectTech1;
  final String projectTech2;
  final String projectTech3;
  final String projectTech4;
  final String githubUrl;


  MobileProjectCard({
    this.imgPath,
    this.projDesc,
    this.projectTitle,
    this.projectTech1,
    this.projectTech2,
    this.projectTech3,
    this.projectTech4,
    this.githubUrl

}
     );

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenRatio = screenHeight/screenWidth;

    return ExpansionCard(
      background: Image.asset(
        imgPath,
        fit: BoxFit.contain,
        color: Colors.black45,
        colorBlendMode: BlendMode.darken,
      ),
      title: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              projectTitle, style: GoogleFonts.lato(fontSize: screenRatio*11,fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      children: <Widget>[
        Padding(
          padding:EdgeInsets.only(left: screenWidth/18.75,top: screenHeight/40.6),
          child: Container(
            alignment: Alignment.topLeft,
            child: Text(
              projDesc,
              style: GoogleFonts.lato(fontSize: screenRatio*6,color: Colors.white,letterSpacing: 1.0,fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: screenWidth/18.75,top: screenHeight/40.6),
          child: Row(
            children: [
              Text(projectTech1,style:GoogleFonts.lato(color: Colors.white,fontSize: screenRatio*5.5)),
              SizedBox(height: screenHeight/81.2,width: screenWidth/37.5,),
              Text(projectTech2,style:GoogleFonts.lato(color: Colors.white,fontSize: screenRatio*5.5)),
              SizedBox(height: screenHeight/81.2,width: screenWidth/37.5,),
              Text(projectTech3,style:GoogleFonts.lato(color: Colors.white,fontSize: screenRatio*5.5)),
              SizedBox(height: screenHeight/81.2,width: screenWidth/37.5,),
              Text(projectTech4,style:GoogleFonts.lato(color: Colors.white,fontSize: screenRatio*5.5)),
              Expanded(
                  child:MaterialButton(
                    child: Image.asset("assets/githubw.png",scale:20,),
                    onPressed: () async {
                      String url=githubUrl;
                      if (await canLaunch(url)){
                        print('Height: '+ MediaQuery.of(context).size.height.toString());
                        print("width: " + MediaQuery.of(context).size.width.toString());
                        await launch(url);

                      }else{
                        print("Cannot Launch");
                        print('Height: '+ MediaQuery.of(context).size.height.toString());
                        print("width: " + MediaQuery.of(context).size.width.toString());
                      }

                    },
                  )
              )
            ],
          ),
        )
      ],
    );
  }
}
