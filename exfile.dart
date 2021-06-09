import 'package:flutter/material.dart';

class EXwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Center(
            child: Container(
        child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.blue,
                  child: Text("HEllo world  ",textAlign: TextAlign.right,),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: Text(" HEllo world"),
                ),
              )
            ],
        ),
      ),
          ),
    );
  }
}