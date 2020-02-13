import 'package:flutter/material.dart';
import 'musique.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Musique> maListeOfMusic = [
    new Musique("Theme swift1", "codeabe1", 'assets/un.jpg', 'https://www.radiantmediaplayer.com/media/bbb-360p.mp4'),
    new Musique("Theme swift2", "codeabe2", 'assets/deux.jpg', 'https://www.radiantmediaplayer.com/media/bbb-360p.mp4')
  ];
  Musique maMusicActuelle;
  @override
  void initState()
  {
    super.initState();
    maMusicActuelle = maListeOfMusic[0];
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        title: Text(widget.title),
      ),
      backgroundColor: Colors.grey[800],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
          new Card(
            elevation: 9.0,
            child: new Container(
              width: MediaQuery.of(context).size.width/1.5,
              child: new Image.asset(maMusicActuelle.imagePath),
            ),
          ),
            textAvecStyle(maMusicActuelle.titre, 1.5),
            textAvecStyle(maMusicActuelle.artiste, 1.0),
            new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              boutton(Icons.fast_rewind, 30.0,  ActioMusic.rewind ),
              boutton(Icons.play_arrow, 30.0,  ActioMusic.play ),
              boutton(Icons.fast_forward, 30.0,  ActioMusic.forward ),
              //boutton(Icons.pause, 30.0,  ActioMusic.pause ),
            ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                textAvecStyle("0.0", 0.8),
                textAvecStyle("0.22", 0.8),
              ],
            )
          ],
        ),
      ),

    );


  }

  Text textAvecStyle(String data, double scale)
  {
    return new Text(
      data,
      textScaleFactor: scale,
      textAlign: TextAlign.center,
      style: new TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        fontStyle: FontStyle.italic,
      ),
    );

  }
  IconButton boutton(IconData icone, double taille, ActioMusic action)
  {
    return new IconButton(
     iconSize: taille,
     color: Colors.white,
     icon: new Icon(icone),
      onPressed: ()
    {
      switch(action)
      {
        case ActioMusic.play:
        print("play");
        break;
        case ActioMusic.pause:
        print("pause");
        break;
        case ActioMusic.forward:
        print("forward");
        break;
        case ActioMusic.rewind:
        print("rewind");
        break;
      }
    });
  }

}
enum  ActioMusic
{
  play,
  pause,
  rewind,
  forward,
}
