import 'package:flutter/material.dart';
  import 'package:flutter_app_rdvlast/controller/RdvController.dart';
  import 'package:flutter_app_rdvlast/controller/ProfilController.dart';
  import 'package:flutter_app_rdvlast/controller/MessagesController.dart';


  void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

      ),
      debugShowCheckedModeBanner: false,
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


    @override
    Widget build(BuildContext context) {

      return new DefaultTabController
        (
          length:3 ,
          child: Scaffold(

            backgroundColor: Colors.white,
            appBar: AppBar(
              title: new Text("Rendez-vous"),
              bottom: new TabBar(tabs: [
                new Tab(icon: new Icon(Icons.account_circle,)),

                new Tab(icon: new Icon(Icons.calendar_today,)),

                new Tab(icon: new Icon(Icons.message,)),

              ]),
              actions: <Widget>[
                new Icon(Icons.settings,),

              ],
              leading: new Icon(Icons.menu),
              backgroundColor: Colors.blue.shade900,

            ),
            body: new TabBarView(

                children: controllers()),
          )
      );
    }

    List <Widget> controllers()
    {
      return[
        new ProfilController(),
        new RdvController(),
        new MessagesController(),

      ];
    }
  }