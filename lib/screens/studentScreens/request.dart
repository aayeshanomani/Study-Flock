import 'package:flutter/material.dart';

class StudentRequest extends StatefulWidget {
  const StudentRequest();

  @override
  _StudentRequestState createState() => _StudentRequestState();
}

class _StudentRequestState extends State<StudentRequest> {
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
                  child: Text('Request for Tuition', style: TextStyle(
                    fontSize: 27,
                    fontFamily: 'PT_Sans_Narrow',
                    letterSpacing: 1.4,
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.bold)),
                ),
                Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Subject',
                          hintText: 'Enter subject you want to learn'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Subject code',
                          hintText: 'Enter subject code for the subject.'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Time',
                          hintText: 'Enter time at which you want to study.'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Place',
                          hintText: 'Enter place where you want to study.'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  minLines: 3,
                  maxLines: 5,
                  decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Additional Information',
                          hintText: 'Other information tutor should know.',
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
