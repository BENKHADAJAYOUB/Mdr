import 'package:flutter/material.dart';

class MessagesController extends StatefulWidget
{
    @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MessagesControllerState();
  }
}

class MessagesControllerState extends State<MessagesController>
{
   String title = "Message";
  @override
  Widget build(BuildContext context) {

    return new Center(

      child: new Text(
        "Messages"
      ),
    );
  }

}