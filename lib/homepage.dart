import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  @override 
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        appBar: AppBar( 
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: (){},
            icon: Icon(Icons.menu, size: 20, color: Colors.black, )),
        ),
        body: Container(
          child: Column(
            children: Container(),
          ),
        ),
        bottomNavigationBar: FancyBottomNavigation(
    tabs: [
        TabData(iconData: Icons.home, title: "Home"),
        TabData(iconData: Icons.sleep, title: "Search"),
        TabData(iconData: Icons.shopping_cart, title: "Basket")
    ],
    onTabChangedListener: (position) {
        setState(() {
        });
    },
)
        ),
      );
    
  }
}