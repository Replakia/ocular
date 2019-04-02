import 'package:flutter/material.dart';
import 'dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/dashboard':(BuildContext context) => Dashboard(),
      },
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              child: Stack(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.fromLTRB(75.0, 175.0, 0.0, 0.0),
                      child: Text('Ocular',
                        style: TextStyle(
                          fontSize: 80.0, fontWeight: FontWeight.bold),
                      )
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(295.0, 175.0, 0.0, 0.0),
                      child: Text('.',
                        style: TextStyle(
                          fontSize: 80.0, fontWeight: FontWeight.bold, color:Colors.blueAccent),
                      )
                  )
                ],
              )
          ),
          Container(
            padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0,),
            child: Column(
              children: <Widget>[
               TextField(
                 decoration: InputDecoration(
                   labelText: 'STUDENT ID',
                   labelStyle: TextStyle(
                     fontFamily: 'Montserrat',
                     fontWeight: FontWeight.bold,
                     color: Colors.grey,
                   ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    )
                 ),
               ),
               SizedBox(height: 20.0,),
               TextField(
                 decoration: InputDecoration(
                     labelText: 'PASSWORD',
                     labelStyle: TextStyle(
                       fontFamily: 'Montserrat',
                       fontWeight: FontWeight.bold,
                       color: Colors.grey,
                     ),
                     focusedBorder: UnderlineInputBorder(
                       borderSide: BorderSide(color: Colors.grey),
                     )
                 ),
                 obscureText: true,
               ),
               SizedBox(height: 20.0,),
                Container(
                  alignment: Alignment(1.0, 0.0),
                  padding: EdgeInsets.only(top: 15.0, left: 20.0,),
                  child: InkWell(
                    child: Text('Forgot Password',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40.0,),
                Container(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.blueAccent,
                    shadowColor: Colors.blueAccent,
                    elevation: 7.0,
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).pushNamed('/dashboard');
                      },
                      child: Center(
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          )
                        ),
                      ),
                    )
                  )
                )
              ],
            )
          )
        ],
      ),
    );
  }
}
