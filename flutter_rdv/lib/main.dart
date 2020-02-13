import 'package:flutter/material.dart';

void main()
{
  runApp(new MyApp(

  )
  );
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    return MaterialApp
      (
        home: DefaultTabController(
          length: choices.length,
          child: Scaffold(
            appBar: AppBar(
              title: const Text("Rendez-vous"),
              bottom: TabBar(
                isScrollable: true,
                tabs: choices.map<Widget>((Choice choice){
                  return Tab(
                    text: choice.title,
                    icon: Icon(choice.icon),
                  );
                } ).toList()

              ),
            ),
          ),
        ),
      );
  }
}
class Choice {
  final String title;
  final IconData icon;
  const Choice({this.title, this.icon});
}
  const List<Choice> choices = <Choice>[
    Choice(title:'CAR',icon:Icons.message),
    Choice(title:'CAR',icon:Icons.calendar_today),
    Choice(title:'CAR',icon:Icons.account_circle),
  ];

class ChoicePage extends StatelessWidget
{
  final Choice choice;
  const ChoicePage({Key key,this.choice}):super(key:key);
  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return new Card(
      color: Colors.white,
      child: Center
        (
        child: Column
          (
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(choice.icon, size: 15.0,color: textStyle.color,),
              Text(choice.title,style: textStyle,)
            ],
            ),
      ),
    );
  }

}