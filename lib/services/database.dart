import 'package:cloud_firestore/cloud_firestore.dart';

class Database {
  Future<void> studentEmailExists(String email) async {
    var result = await FirebaseFirestore.instance
        .collection('students')
        .doc(email)
        .get();
    print("************************************\n" + result.toString());
    print(result.exists);
    //print(result.data().isEmpty);
  }
}
