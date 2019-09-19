import 'package:flutter/material.dart';
class profiles extends StatefulWidget {
  @override
  _profilesState createState() => _profilesState();
}
var backI = [AssetImage("assets/didi.png"), AssetImage("assets/google.png"), AssetImage("assets/microsoft.png"), AssetImage("assets/sbi.jpg"), AssetImage("assets/image1.jpg"), AssetImage("assets/image2.jpg")];
var proI = [AssetImage("assets/didil.png"), AssetImage("assets/googlel.jpg"),AssetImage("assets/microsoftl.png"),AssetImage("assets/sbil.jpg"),AssetImage("assets/a1.jpg"),AssetImage("assets/a4.jpg")];
var text1 = ["DIDI INC", "Goolge", "Mocrosoft", "SBI", "Alankrit", "Alankrit2"];
class _profilesState extends State<profiles> {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      color: Colors.grey,
      child: Column(
         mainAxisSize: MainAxisSize.min,
         children: <Widget>[
         
            Container(
              width: double.infinity,
              color: Colors.white,
              height: 50,
              child: Row(children: <Widget>[Padding(padding: EdgeInsets.only(left: 30), child:Text("My Communities",style: TextStyle(fontSize: 20),)), Container(width: 140), IconButton(onPressed: (){}, icon:Icon(Icons.arrow_right, size: 40,))],),
            ),
            Expanded(
              
              child: GridView.builder(
               // shrinkWrap: true,
                scrollDirection: Axis.vertical,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: 0.7 ,crossAxisCount:2),
                itemCount:6,
                itemBuilder: (BuildContext ctx, index){
                  return
                 
                Container(
                  child:Padding(
                    padding: EdgeInsets.all(5),
                    child:Stack(children: <Widget>[ Container(
                  color: Colors.white),
                  Positioned(height: 70, top: 0, right: 0,left: 0, child: Container(child: Image(fit:BoxFit.fill,image: backI[index],)),),
                  Positioned(top: 35,left:55,child: Container(child: Image(fit: BoxFit.fill, image: proI[index],), height: 90, width: 90,)),
                  Positioned(child: Center(child: 
                     Text(text1[index], style: TextStyle(fontSize: 30, color: Color(0xff0077b5)),),
                  ),),
                  Positioned(bottom: 100,right: 40,child: Text("2841289 followers", style: TextStyle(fontSize: 12),),),
                  Positioned(child: OutlineButton(onPressed:(){}, child: Text("Follow", style: TextStyle(fontSize: 20, color: Color(0xff0077b5)),),), bottom: 30,right: 50,)
                  ]))
                );}
              ),
            )
        ],)
    );
  }
}