import 'package:flutter/material.dart';

class RdvController extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new RdvControllerState();
  }
}

class RdvControllerState extends State<RdvController>
{
  String title = "Rendez-vous";

  @override
  Widget build(BuildContext context) {

    return new Center(

      child: new Container(
      margin:new EdgeInsets.only(top: 30.0,bottom: 15.0),
        child: new Column(
          children: <Widget>[
            new Text(
              "VOS RENDEZ-VOUS",
              style: new TextStyle(
                color: Colors.blue.shade900,
                fontSize: 30.0,
              ),
            ),
            new Card(
              color: Colors.transparent,
              shape: Border.all(
                color: Colors.transparent
              ),
              child: new Container(

                width: MediaQuery.of(context).size.width/1.5,
                child: new Image.asset('image/c2.png',
                  fit:BoxFit.cover,) ,
              ),
            ),
            new Text(
              "Aucun rendez-vous planifié à ce jour",
              style: new TextStyle(
                color: Colors.grey,
                fontSize: 20.0,
              ),
            ),
            new Container(
              height: 20,
            ),
            new RaisedButton(

              onPressed: ()
              {

              },
              color: Colors.pink,
              child: new Text("Prendre rendez-vous",style: TextStyle(fontSize: 20),),
              textColor: Colors.white,
              padding:new EdgeInsets.only(top: 20.0,bottom: 20.0,left: 70,right: 70)

            ),

          ],

        ),

      ),

    );

  }

}