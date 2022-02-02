import 'package:flutter/material.dart';
import 'package:shopoid/screens/studentScreens/home.dart';
import 'package:shopoid/services/database.dart';
import 'package:shopoid/widgets/creds.dart';

class StudentRequest extends StatefulWidget {
  const StudentRequest();

  @override
  _StudentRequestState createState() => _StudentRequestState();
}

class _StudentRequestState extends State<StudentRequest> {
  String sub = "", subc = "", topic = "", time = "", place = "", addInfo = "";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(27.0),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xff4A4B2F),
            border: Border.all(
              color: Color(0xffBB4430),
            ),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Request for Tuition',
                      style: TextStyle(
                          fontSize: 27,
                          fontFamily: 'PT_Sans_Narrow',
                          letterSpacing: 1.4,
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        sub = value;
                      });
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Subject',
                        hintText: 'Enter subject you want to learn'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        subc = value;
                      });
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Subject code',
                        hintText: 'Enter subject code for the subject.'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        topic = value;
                      });
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Topic',
                        hintText: 'Enter topic for the subject.'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        time = value;
                      });
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Date and Time',
                        hintText: 'Enter date and time to study.'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        place = value;
                      });
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Place',
                        hintText: 'Enter place where you want to study.'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        addInfo = value;
                      });
                    },
                    minLines: 3,
                    maxLines: 5,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Additional Information',
                      hintText: 'Other information tutor should know.',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Map<String, dynamic> data = {
                        "subject": sub,
                        "subjectCode": subc,
                        "topic": topic,
                        "dateAndTime": time,
                        "place": place,
                        "by": globalEmail,
                        "additionalInformation": addInfo
                      };
                      Database().saveRequest(data);
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StudentHome()));
                    },
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all<double>(5.0),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xff4A4B2F)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side:
                                        BorderSide(color: Color(0xff246EB9))))),
                    child: Text(
                      'Send Request',
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'PT_Sans_Narrow',
                          color: Color(0xff36151E),
                          letterSpacing: 4,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
