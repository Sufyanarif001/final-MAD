import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    loadData();

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(

        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.purple),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/splash.jpg"),
                          radius: 50.0,

                      ),

                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),


    );
  }
  Future<Timer> loadData() async{
    return new Timer(Duration(seconds: 5),onDoneLoading);
  } onDoneLoading() async{
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder:  (context)=>MyApp()))    ;
  }



}

class Navigator {
  static of(BuildContext context) {}
}


