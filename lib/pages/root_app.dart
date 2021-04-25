import 'package:crashcourse/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      backgroundColor: Colors.black,
      body: HomePage(),
      bottomNavigationBar: getFooter(),
    );
  }

 Widget getAppBar() {
   return AppBar(
     backgroundColor: Colors.black,
     title: Center(
       child: 
         SvgPicture.asset("assets/skrollo_head_light.svg",width: 30,)
     ),
   );
 }

  Widget getFooter() {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(color: Colors.black),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(4, (index) {
            return Icon(
              Icons.home,
              color: Colors.white,
            );
          }),
          // children: <Widget>[Icon(
          //   Icons.access_alarm,
          //   color: Colors.white,
          //   )],
        ),
      ),
    );
  }
}
