import 'package:flutter/material.dart';

class Ayoub extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: "Les derniers salopars",
      theme:new ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: new Home(),
    );
  }

}
class Home extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _Home();
  }

}
class _Home extends State<Home>
{
  bool oui = false;
  @override
  Widget build(BuildContext context) {

    double largeur = MediaQuery.of(context).size.width;//pour récuperer le width de notre application
    return new Scaffold(
      appBar: new AppBar(
        title:new Text("Ayoub BEN KHADAJ "),
        leading: new Icon(Icons.account_circle),
        actions: <Widget>[
          new Icon(Icons.settings),
        ],
        elevation: 1.0,
        centerTitle: true,
      ),
      body: new Center(
        child:new Column(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Text(
              'Salut les codeurs',
              style: new TextStyle(
                color: (oui)?Colors.black:Colors.red,
                fontStyle: FontStyle.italic,
                fontSize: 30.0,
              ),
            ),
             new Card(
               elevation: 10.0,
              child: new Container(
                height: 200.0,
                width: MediaQuery.of(context).size.width/1.5,
                child: new Image.asset('image/ab1.jpg',
                fit:BoxFit.cover,) ,
              ),
            ),
            new IconButton(
              icon: new Icon(Icons.access_alarm),
              onPressed: (){
                setState(() {
                  oui = !oui;
                });
                print("Hello world");
              },
            ),
            new FlatButton(
                onPressed: appuyerBtn,
                color: Colors.blue,
                child: new Text(
                  'Cliquer',
                  style: new TextStyle(
                    color: Colors.red
                  ),
                )
            ),
            new Container(
              height: 75.0,
              color: Colors.blue,
              margin: EdgeInsets.only(left: 20.0,right: 20.0),
              child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                    onPressed: appuyerBtn,
                    color: Colors.blue,
                    child: new Text("appuyer"), 
                    textColor: Colors.red,
                ),
                new Icon(Icons.add_a_photo,
                  color: Colors.white,
                  size: largeur/10,
                ),
                new Icon(Icons.accessibility,
                  color: Colors.white,
                  size: largeur/10,
                ),
                new Icon(Icons.add_alert,
                  color: Colors.white,
                  size: largeur/10,
                ),
                new Icon(Icons.accessibility_new,
                  color: Colors.white,
                  size: largeur/10,
                )
              ],
              ),
            )
          ],
        ),
      ),
        floatingActionButton: new FloatingActionButton(
            onPressed: appuyerBtn,
            elevation: 8.0,
            tooltip: 'hello world',
            child: new Icon(Icons.add,color: Colors.white,

        ),

      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
  void appuyerBtn()
  {
    setState(() {
      oui = !oui;
    });
  }

}
////////////////////////
/*
new Center(
child: new Card(
elevation: 10.0,
color: Colors.blue,
child: new Container(
width: MediaQuery.of(context).size.height/1.5,
height: 250.0,
child: new Image.asset('image/ab1.jpg',
fit: BoxFit.cover,
),

),
),

),
*/

///////////////////////////2
/*
new Container(
        color: Colors.blue,
      height: MediaQuery.of(context).size.height/2,
      margin: new EdgeInsets.only(top: 20.0,bottom: 15.0),//all
      child:new Center(
        child:new Text(
"Hello world, je voudrais vous dire que moi j'habite labas",
textAlign: TextAlign.center,
textScaleFactor: 2.0,
style: new TextStyle(
fontSize: 20.0,
color: Colors.deepOrange,
fontStyle: FontStyle.italic,
),
maxLines: 2,
),*/