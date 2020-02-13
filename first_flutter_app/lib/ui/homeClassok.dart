
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Ayoub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(

        color: Colors.blue,
        child: new Center(

          child: new Text("Hello world, Ahmed",textDirection: TextDirection.ltr
            ,style: new TextStyle(fontSize: 23,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,),
          ),
        )

    );

  }

}