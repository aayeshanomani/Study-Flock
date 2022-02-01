import 'package:cloud_firestore/cloud_firestore.dart';

class Database {
  void checkEmail(String email) {
    var result =
        FirebaseFirestore.instance.collection('users').doc(email).get();
    print(result.toString());
  }
}
