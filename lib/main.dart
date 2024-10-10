import 'package:dashboard/Dashboards.dart';
import 'package:flutter/material.dart';



void main(){
  runApp(Dashboard());
}

class Dashboard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LoginSignupui',

      home: Dashboarda(),


    );
  }

}