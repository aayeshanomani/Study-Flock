import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopoid/logins/studentLogin.dart';
import 'package:shopoid/logins/tutorLogin.dart';

class LoginPage extends StatefulWidget {
  const LoginPage();

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4A4B2F),
      appBar: AppBar(
        backgroundColor: Color(0xff246EB9),
        title: Center(
            child: Text(
          'Login',
          style: TextStyle(
              fontSize: 27,
              fontFamily: 'PT_Sans_Narrow',
              color: Color(0xff36151E),
              letterSpacing: 2,
              fontWeight: FontWeight.bold),
        )),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/login.png'),
              SizedBox(height: 28,),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StudentLogin()));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xff839788)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Color(0xff246EB9))))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            FontAwesomeIcons.book,
                            color: Color(0xff246EB9),
                          ),
                        ),
                        SizedBox(
                          width: 27,
                        ),
                        Text("Login as Student",
                            style: TextStyle(
                                fontSize: 27,
                                fontFamily: 'PT_Sans_Narrow',
                                color: Color(0xff246EB9),
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  )),
              SizedBox(
                height: 28,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TutorLogin()));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xff36151E)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Color(0xff839788))))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            FontAwesomeIcons.pen,
                            color: Color(0xff839788),
                          ),
                        ),
                        SizedBox(
                          width: 27,
                        ),
                        Text("Login as Tutor",
                            style: TextStyle(
                                fontSize: 27,
                                fontFamily: 'PT_Sans_Narrow',
                                color: Color(0xff839788),
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
