import 'package:cloud_firestore/cloud_firestore.dart';

class Database {
  Future<bool> studentEmailExists(String email) async {
    var result = await FirebaseFirestore.instance
        .collection('students')
        .doc(email)
        .get();
    print("************************************\n" + result.toString());
    print(result.exists);
    return result.exists;
    //print(result.data().isEmpty);
  }

  createStudent(Map<String, dynamic> data) {
    FirebaseFirestore.instance
        .collection('students')
        .doc(data['email'])
        .set(data, SetOptions(merge: true));
  }

  Future<bool> loginStudent(String email, String pass) async {
    var res = await FirebaseFirestore.instance
        .collection('students')
        .doc(email)
        .get();
    if (res.data()['password'] == pass) {
      return true;
    } else {
      return false;
    }
  }

  saveRequest(Map<String, dynamic> data) {
    FirebaseFirestore.instance
        .collection('requests')
        .doc(data['subject']+data['topic'])
        .set(data, SetOptions(merge: true));
  }
}
