import 'package:flutter/material.dart';
bool _flag1 = true;
bool _flag2 = true;
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}
class _LoginState extends State<Login> {
  final username = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: size.width,
                  height: size.height / 2,
                  color: Color(0xfffd7f3f),
                ),
                Text("login",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Color(0xfffd7f3f),
                    fontFamily: 'Metrophobic',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30,left: 30,right: 30,bottom: 15),
                  child: TextField(
                    cursorColor: Colors.black,
                    controller: username,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey,
                      hintText: "Your Email",
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(50),
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, bottom: 15),
                  child: TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey,
                      hintText: "Password",
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(50),
                        )),

                    ),
                  ),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, bottom: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _flag1 = !_flag1;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 12.0),
                      child: Center(
                        child: Text('Login',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Metrophobic',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    style: ElevatedButton.styleFrom(
                      primary: _flag1 ? Colors.white : Color(0xfffd7f3f),
                      onPrimary: _flag1 ? Color(0xfffd7f3f) : Colors.white,
                      shape: StadiumBorder(),
                      side: BorderSide(width: 1, color: Color(0xfffd7f3f)),
                    ),
                  ),
                ),
                Text("Forgot Your Password?",
                  style: TextStyle(
                    fontFamily: 'Metrophobic',
                    fontSize: 15,
                    color: Color(0xff5A5A5A),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, bottom: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _flag2 = !_flag2;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 12.0),
                      child: Center(
                        child: Text('Login with Google',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Metrophobic',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    style: ElevatedButton.styleFrom(
                      primary: _flag2 ? Colors.white : Color(0xfffd7f3f),
                      onPrimary: _flag2 ? Color(0xfffd7f3f) : Colors.white,
                      shape: StadiumBorder(),
                      side: BorderSide(width: 1, color: Color(0xfffd7f3f)),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Text("Dont have an Account?",
                        style: TextStyle(
                          fontFamily: 'Metrophobic',
                          fontSize: 15,
                          color: Color(0xff5A5A5A),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontFamily: 'Metrophobic',
                            fontSize: 19,
                            color: Color(0xfffd7f3f),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
            Positioned(
              top: 35,
              left: 50,
              right: 50,
              child: Container(
                padding: EdgeInsets.only(bottom: 20),
                height: size.height * 0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/login.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),


    );
  }
}

