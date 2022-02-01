import 'package:flutter/material.dart';
import 'package:shopoid/screens/tutorScreens.dart/home.dart';

class TutorRegister extends StatefulWidget {
  const TutorRegister();

  @override
  _TutorRegisterState createState() => _TutorRegisterState();
}

class _TutorRegisterState extends State<TutorRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff246EB9),
      appBar: AppBar(
        backgroundColor: Color(0xff36151E),
        title: Text("Register as Tutor",
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
                  child: Image.asset('assets/images/tutLogin.png'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Full Name',
                      hintText: 'Enter your full name'),
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
              SizedBox(height: 27,),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Color(0xff839788),
                    borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => TutorHome()));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xffBB4430)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Color(0xff4A4B2F))))),
                  child: Text(
                    'Register',
                    style: TextStyle(
                        fontSize: 27,
                        fontFamily: 'PT_Sans_Narrow',
                        color: Color(0xffffffff),
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 28,),
              
            ],
          ),
        ),
      ),
    );
  }
}