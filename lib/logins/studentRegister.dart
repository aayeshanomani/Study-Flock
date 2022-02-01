import 'package:flutter/material.dart';
import 'package:shopoid/screens/studentScreens/home.dart';
import 'package:shopoid/services/database.dart';

class StudentRegister extends StatefulWidget {
  const StudentRegister();

  @override
  _StudentRegisterState createState() => _StudentRegisterState();
}

class _StudentRegisterState extends State<StudentRegister> {
  String name = "", email = "", password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4A4B2F),
      appBar: AppBar(
        backgroundColor: Color(0xff246EB9),
        title: Text("Register as Student",
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
                  onChanged: (val) {
                    setState(() {
                      name = val;
                    });
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Full Name',
                      hintText: 'Enter your full name'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  onChanged: (val) {
                    setState(() {
                      email = val;
                    });
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Email',
                      hintText: 'Enter valid mail id as abc@gmail.com'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  onChanged: (val) {
                    setState(() {
                      password = val;
                    });
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter your secure password'),
                ),
              ),
              SizedBox(
                height: 27,
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Color(0xff36151E),
                    borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(
                  onPressed: () {
                    //Navigator.push(context,
                    //  MaterialPageRoute(builder: (_) => StudentHome()));
                    Database().studentEmailExists(email);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xff839788)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Color(0xffBB4430))))),
                  child: Text(
                    'Register',
                    style: TextStyle(
                        fontSize: 27,
                        fontFamily: 'PT_Sans_Narrow',
                        color: Color(0xffBB4430),
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
