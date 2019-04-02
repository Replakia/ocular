import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ocular/ucts.dart';
import 'package:ocular/timetable.dart';
import 'package:ocular/result.dart';
import 'package:ocular/main.dart';

class myprofile extends StatefulWidget {
  @override
  _myprofileState createState() => _myprofileState();
}

class _myprofileState extends State<myprofile>{

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
        title: Text('Profile',
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
           buildTile(
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column
                  (
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>
                    [
                      Padding(padding: EdgeInsets.only(bottom: 16.0)),
                      Text('I am Syahmi', style: TextStyle(
                        fontSize: 40.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.black,)),
                    ]
                ),
              ),
            ),
        ],
        staggeredTiles: [
          StaggeredTile.extent(2, 150.0),
          StaggeredTile.extent(2, 500.0),
        ],
      ),
    );
  }

}
