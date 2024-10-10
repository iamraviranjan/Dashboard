import 'package:flutter/material.dart';

class Dashboarda extends StatefulWidget {  @override
  State<Dashboarda> createState() => _DashboardaState();
}

class _DashboardaState extends State<Dashboarda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFFE7EDF6),
        body: ListView(
          children:  <Widget>[
            _top(),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Category',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),),
                  Text('View All', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)
                ],
              ),
            ),
            SizedBox(height: 22,),
            Container(
              height: 200,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                children: <Widget>[
                  _gridItem(Icons.airport_shuttle),
                  _gridItem(Icons.add_shopping_cart),
                  _gridItem(Icons.arrow_drop_down_circle),
                  _gridItem(Icons.bluetooth_searching),
                  _gridItem(Icons.add_location),
                  _gridItem(Icons.arrow_drop_down_circle),
                ],
              ),
            ),
            SizedBox(height: 22,),
            Padding(padding: EdgeInsets.all(16),
            child: Row(
              children: <Widget>[
                Text('Latest', style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)
              ],
            ),
            ),
            _cardItem(1),
            _cardItem(2),
            _cardItem(3),
            _cardItem(4),
          ],
        ),

    );
  }}


_cardItem(image){
  return Padding(padding: EdgeInsets.all(16),
  child: Row(
    children: <Widget>[
      Container(
        width:100,
      height: 100,
      decoration: BoxDecoration(
        image:
        DecorationImage(image:AssetImage("assets/images/Ravi1.jpg"),fit:BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      ),
      SizedBox(width: 20,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Post, Graduation', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
        SizedBox(height: 10,),
          Text('15 items',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
          ),
          Text('by Ravi', style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey),)
        ],
      ),
    ],
  ),
  );
}



_gridItem(icon){
  return Column(
    children: <Widget>[
      CircleAvatar(
        child: Icon(
          icon,size: 16.0,
          color: Colors.white,
        ),
        backgroundColor: Colors.deepOrange.withOpacity(0.9),
      ),
      SizedBox(height: 10.0,),
      Text('Birthday', style: TextStyle(fontSize: 11.0),),

    ],
  );
}





_top(){
  return Container(
    padding: EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      color: Color(0xFF5368DC),
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(30.0),
        bottomRight: Radius.circular(30.0),
      )
    ),
    child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/man.png'),
                ),
                SizedBox(width: 10.0,),
                  Text('hi. Ravi', style: TextStyle(color: Colors.white),),
              ],
            ),
            IconButton(
              icon: Icon(Icons.notifications,  color: Colors.white,),
              onPressed: (){
              },
            ),
          ],
        ),
        SizedBox(height: 25.0,),
        TextField(
          decoration: InputDecoration(
            hintText: 'search',
            fillColor: Colors.white,
            filled: true,
            suffixIcon: Icon(Icons.filter_list),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          ),
        )
      ],
    ),
  );
}
