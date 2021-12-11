import 'package:flutter/material.dart';
import 'package:newproject/login.dart';
bool _flag1 = true;
bool _flag2=true;
class GetStarted extends StatefulWidget {
  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
   var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                width: size.width,
                height: size.height/2,
                color: Color(0xfffd7f3f),
              ),
            ],
          ),
          Positioned(
            left: 60,
            right: 50,
            child: Container(
              padding: EdgeInsets.only(bottom:20),
              height: size.height*0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'images/logo.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            top: 80,
            left: 50,
            right: 50,
            child: Container(
              padding: EdgeInsets.only(bottom:20),
              height: size.height*0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'images/getstarted.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            top:size.height*0.65,
            left:size.width*0.25,
            child: Text(
              'Find Your Best courses',
              style: TextStyle(
                color:Color(0xff5A5A5A),
                fontSize: 20,
                fontFamily: 'Metrophobic',
              ),
            ),
          ),
          Positioned(
            top:size.height*0.69,
            left:size.width*0.25,
            child: Padding(
              padding: const EdgeInsets.only(left:20),
              child: Text(
                'With Best mentor',
                style: TextStyle(
                  color:Color(0xff5A5A5A),
                  fontSize: 20,
                  fontFamily: 'Metrophobic',
                ),
              ),
            ),
          ),
          Positioned(
            top:size.height*0.75,
            left:size.width*0.2,
            child: ElevatedButton(
              onPressed: (){
                setState(() {
                  _flag1=!_flag1;
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));
                });
              },
              child: Padding(
                padding:  EdgeInsets.only(left: 80,right: 80,top: 15,bottom: 15),
                child: Text('Login',
                ),
              ),

              style: ElevatedButton.styleFrom(
                primary: _flag1 ? Colors.white : Color(0xfffd7f3f),
                onPrimary: _flag1?Color(0xfffd7f3f):Colors.white,
                shape:StadiumBorder(),
                side: BorderSide(width:1, color:Color(0xfffd7f3f)),
    ),
              ),
            ),
          Positioned(
            top:size.height*0.85,
            left:size.width*0.2,
            child: ElevatedButton(
              onPressed: (){
                setState(() {
                  _flag2=!_flag2;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 15,bottom: 15,left: 40,right: 40),
                child: Text('Create an Account',
                ),
              ),

              style: ElevatedButton.styleFrom(
                primary: _flag2 ? Colors.white : Color(0xfffd7f3f),
                onPrimary: _flag2?Color(0xfffd7f3f):Colors.white,
                shape:StadiumBorder(),
                side: BorderSide(width:1, color:Color(0xfffd7f3f)),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
