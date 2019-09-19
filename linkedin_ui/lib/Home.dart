import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
var avatList = [AssetImage("assets/a1.jpg"),AssetImage("assets/a2.jpg"),AssetImage("assets/a3.jpg"),AssetImage("assets/a4.jpg"),];
var titleList = ["Alankrit1", "AlankritNayak", "Mickey", "Alankrit"];
var subList = ["12002 followers\nWorks at Google\n as a software engineer",
                "47383 followers\nWorks at LinkedIN\n as a data scientist",
                "68439 followers\nWorks at Microsoft \nas a Cloud Architect",
                "048854 followers\nWorks at Facebook \nas a Machine Learning Engineer"];
var containImg = [AssetImage("assets/image1.jpg"),AssetImage("assets/image2.jpg"),AssetImage("assets/image3.jpg"),AssetImage("assets/image4.jpg") ];
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      height: double.infinity,
      width: double.infinity,
      child:
      ListView.builder(
        //shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: 4,
        itemBuilder: (BuildContext ctx, index)=>
        Padding(
          padding: EdgeInsets.only(top: 10),
          child:
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
            height: 400,
            width: double.infinity,
            child:Column(children: <Widget>[
          ListTile(
            trailing: IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){}, iconSize: 30,),
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: avatList[index]),
                title: Text(titleList[index], style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold),),
                subtitle: Text(subList[index], style: TextStyle(fontSize: 12),),
          ),
          OutlineButton(
            onPressed: (){}, child: Text("Follow"),
          ),
          SizedBox(
            height: 210,
            width: double.infinity,
           // color: Colors.grey,
            child: Image(image: containImg[index],),
          ),
          Container(
            height: 20,
          ),
          Row(children: <Widget>[
            Container(width: 30,),
            Icon(FontAwesomeIcons.thumbsUp), Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Text("Like"),
            ),
            Icon(FontAwesomeIcons.comment), Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Text("Comment"),),
              Icon(FontAwesomeIcons.share), Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Text("Share"),)
          ],)
          ],)
          
        
      
    ))));
  }
}
