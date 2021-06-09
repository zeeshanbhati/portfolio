import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactIcons extends StatefulWidget {

  final String profileurl;
  final String socialmediaicon;
  final String displaytext;

  ContactIcons({

    this.profileurl,
    this.socialmediaicon,
    @required
    this.displaytext});

  @override
  _ContactIconsState createState() => _ContactIconsState();
}

class _ContactIconsState extends State<ContactIcons> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () async {
            String url= widget.profileurl;
            if (await canLaunch(url)){
              await launch(url);
              print(MediaQuery.of(context).size.height);
              print(MediaQuery.of(context).size.width);

            }else{
              Scaffold.of(context).showSnackBar(SnackBar(content: Text("Error found")));
            }


          },
          onHover: (hover){
            if(mounted){
              setState(() {
                isHovering = !isHovering;
              });
            }
          },

          child: AnimatedContainer(
            height: isHovering ? MediaQuery.of(context).size.height/10 : MediaQuery.of(context).size.height/11 ,
            width: isHovering ? MediaQuery.of(context).size.width/19 : MediaQuery.of(context).size.width/20,
            duration: Duration(milliseconds: 100),
            decoration:BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white,width: 5.0,style: BorderStyle.solid),
                image: DecorationImage(
                  scale:  isHovering ? 9.0 : 11.0 ,
                  image: AssetImage(widget.socialmediaicon),
                  colorFilter: isHovering ? ColorFilter.mode(Colors.black.withOpacity(0), BlendMode.darken) : ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.darken),
                )
            ),

          ),

        ),
        SizedBox(height: MediaQuery.of(context).size.aspectRatio*3,),
        Visibility(visible: isHovering,
            child: Text(widget.displaytext,style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.aspectRatio*6),))
      ],
    );
  }
}
