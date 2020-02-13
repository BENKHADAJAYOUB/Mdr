import 'package:flutter/material.dart';

class ProfilController extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ProfilControllerState();
  }
}

class ProfilControllerState extends State<ProfilController>
{
  String title = "Profils";
  @override
  Widget build(BuildContext context) {

    return new Center(

      child: new Text(
          "Profil"
      ),
    );
  }

}