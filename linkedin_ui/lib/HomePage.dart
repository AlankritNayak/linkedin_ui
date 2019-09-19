import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Home.dart';
import 'profiles.dart';
import 'add.dart';
import 'notif.dart';
import 'shop.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
int currind = 0;
final List<Widget> pages = [Home(), profiles(), add(), notif(), shop()];
class _HomePageState extends State<HomePage> {

  ontapped(int index){
    setState(() {
     currind = index;
    });
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0077b5),
        leading: Icon(Icons.supervised_user_circle),
        actions: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search",
                  suffixIcon: Icon(FontAwesomeIcons.qrcode)),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.message),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currind,
        onTap: ontapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 35,
        type: BottomNavigationBarType.shifting,
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            
            icon: Icon(Icons.home, color: Colors.grey,),
            title: Text("")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle,  color: Colors.grey,),
            title: Text("")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle,  color: Colors.grey,),
            title: Text("")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications,  color: Colors.grey,),
            title: Text("")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop, color: Colors.grey,),
            title: Text("")
          ),
        ],
      ),
      body: pages[currind]
    );
  }
}
