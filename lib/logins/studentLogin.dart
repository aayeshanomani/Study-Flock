import 'package:flutter/material.dart';
import 'package:shopoid/logins/studentRegister.dart';
import 'package:shopoid/screens/studentScreens/home.dart';

class StudentLogin extends StatefulWidget {
  const StudentLogin();

  @override
  _StudentLoginState createState() => _StudentLoginState();
}

class _StudentLoginState extends State<StudentLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffBB4430),
      appBar: AppBar(
        backgroundColor: Color(0xff4A4B2F),
        title: Text("Login",
            style: TextStyle(
                fontSize: 27,
                fontFamily: 'PT_Sans_Narrow',
                letterSpacing: 1,
                fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: 150.0,
                width: 190.0,
                padding: EdgeInsets.only(top: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                ),
                child: Center(
                  child: Image.asset('assets/images/studLogin.png'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Email',
                      hintText: 'Enter valid mail id as abc@gmail.com'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter your secure password'),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  //TODO FORGOT PASSWORD SCREEN GOES HERE
                },
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all<double>(0.0),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xffBB4430)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Color(0xffBB4430))))),
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'PT_Sans_Narrow',
                      color: Color(0xff36151E),
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Color(0xff839788),
                    borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => StudentHome()));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xff4A4B2F)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Color(0xff4A4B2F))))),
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 27,
                        fontFamily: 'PT_Sans_Narrow',
                        color: Color(0xffffffff),
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StudentRegister()));
                },
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all<double>(0.0),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xffBB4430)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Color(0xffBB4430))))),
                child: Text(
                  'New user? Register here',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'PT_Sans_Narrow',
                      color: Color(0xff36151E),
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
