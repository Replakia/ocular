import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ocular/ucts.dart';
import 'package:ocular/timetable.dart';
import 'package:ocular/result.dart';
import 'package:ocular/myprofile.dart';

//import 'package:ocular_app/detailedevents.dart';
//import 'package:ocular_app/detailednotification.dart';
//import 'package:ocular_app/detailedoculus.dart';
//import 'package:ocular_app/detailedrulesandregulation.dart';
//import 'package:ocular_app/detailedsettings.dart';
//import 'package:ocular_app/detailedtimetable.dart';
//import 'package:ocular_app/detaileductsofficialpage.dart';
//import 'package:ocular_app/detaileduser.dart';//import every time there's a new page or route to be used.

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>{

  Widget buildTile(Widget child, {Function() onTap}) {
    return Material(
        elevation: 7.0,
        borderRadius: BorderRadius.circular(12.0),
        shadowColor: Color(0x802196F3),
            child: child,
    );
  }

  @override
  Widget build(BuildContext context){
    // TODO: implement build
    return Scaffold(
      appBar:AppBar(
        centerTitle: true ,
        leading: new Container(),
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        elevation: 2.0,
        backgroundColor: Colors.white,
        title: Text('Ocular',
          style: TextStyle(
            fontSize: 30.0,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body:StaggeredGridView.count(
        crossAxisCount: 2, //2 columns
        crossAxisSpacing: 12.0, // verticalspacing
        mainAxisSpacing: 12.0, //main horizontal spacing
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        children: <Widget>[
          InkWell( //++
              onTap: () { //++
                Navigator.push(context,MaterialPageRoute(builder: (context) => myprofile())); //++
              }, //++
              child: buildTile(
              Padding
              (
              padding: const EdgeInsets.all(20.0),
              child: Row
                (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>
                  [
                    Column
                      (
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>
                      [
                        Text('BCS17090014', style: TextStyle(
                          fontSize: 15.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,)),
                        Text('Syahmi', style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,))
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(60.0),
                      child: Image.asset('assets/picpro.jpeg'),
                    ),
                  ],
              ),
            ),
          ),
          ),
          InkWell( //++
              onTap: () { //++
                Navigator.push(context,MaterialPageRoute(builder: (context) => timetable())); //++
              }, //++
              child: buildTile(
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column
                (
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>
                  [
                    Material
                      (
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(24.0),
                        child: Padding
                          (
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(Icons.insert_invitation, color: Colors.white, size: 30.0),
                        )
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 16.0)),
                    Text('Next Class', style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,)),
                    Text('R922  1500-1700', style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,)),
                  ]
              ),
            ),
          ),
          ),
          buildTile(
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column
                (
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>
                  [
                    Material
                      (
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(24.0),
                        child: Padding
                          (
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(Icons.notifications, color: Colors.white, size: 30.0),
                        )
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 16.0)),
                    Text('Message', style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,)),
                    Text('5 Unreads', style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,)),
                  ]
              ),
            ),
          ),
          buildTile(
            Padding
              (
              padding: const EdgeInsets.all(20.0),
              child: Row
                (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>
                [
                  Column
                    (
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>
                    [
                      Text('Outstanding Fee', style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.red,)),
                      Text('RM7560.00', style: TextStyle(
                        fontSize: 40.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.black,))
                    ],
                  ),
                ],
              ),
            ),
          ),
          InkWell( //++
            onTap: () { //++
            Navigator.push(context,MaterialPageRoute(builder: (context) => result())); //++
            }, //++
            child:buildTile(
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column
                (
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>
                  [
                    Material
                      (
                        color: Colors.green[800],
                        borderRadius: BorderRadius.circular(24.0),
                        child: Padding
                          (
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(Icons.book, color: Colors.white, size: 30.0),
                        )
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 16.0)),
                    Text('CGPA', style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,)),
                    Text('3.95', style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,)),
                  ]
              ),
            ),
          ),
          ),
          buildTile(
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column
                (
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>
                  [
                    Padding(padding: EdgeInsets.only(bottom: 16.0)),
                    Text('Current Lead Points', style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.greenAccent,)),
                    Text('44.5', style: TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,)),
                  ]
              ),
            ),
           ),
          InkWell( //++
          onTap: () { //++
          Navigator.push(context,MaterialPageRoute(builder: (context) => ucts())); //++
          }, //++
          child: buildTile(
            Padding
              (
              padding: const EdgeInsets.all(24.0),
              child: Row
                (
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>
                  [
                    Column
                      (
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>
                      [
                        Text('UCTS', style: TextStyle(fontSize: 25.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,)),
                      ],
                    ),
                  ]
              ),
            ), //onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => ShopItemsPage())),
          ),
          ),
        ],
        staggeredTiles: [
          StaggeredTile.extent(2, 150.0), //image
          StaggeredTile.extent(1, 170.0), //oculus
          StaggeredTile.extent(1, 170.0), //timetable
          StaggeredTile.extent(2, 150.0), //noft
          StaggeredTile.extent(1, 170.0), //events
          StaggeredTile.extent(1, 170.0), //setting
          StaggeredTile.extent(2, 80.0), //user
          //StaggeredTile.extent(2, 240.0), //uctsoffpage
          //StaggeredTile.extent(2, 120.0), //rules and reg
        ],
      ),
    );
  }

}
